#!/usr/bin/env bash
# Збирає книгу з Markdown-розділів у HTML, EPUB і PDF.
set -euo pipefail
cd "$(dirname "$0")"
mkdir -p build
SRC=(00-vstup.md 01-modul-1.md 02-modul-2.md 03-modul-3.md 04-modul-4.md 05-modul-5.md 06-modul-6.md 07-modul-7.md 08-modul-8.md 09-bonus.md 10-dodatky.md)
OUT=build/nutriciologiya-dlya-sportsmeniv
pandoc "${SRC[@]}" -o "$OUT.md" -t gfm
pandoc "${SRC[@]}" -s --toc --toc-depth=2 --embed-resources --css style.css \
  --metadata toc-title="Зміст" -o "$OUT.html"
pandoc "${SRC[@]}" --toc --toc-depth=2 --css style.css --metadata toc-title="Зміст" -o "$OUT.epub"
node -e '
const { chromium } = require("playwright");
(async () => {
  const b = await chromium.launch(); const p = await b.newPage();
  await p.goto("file://" + require("path").resolve(process.argv[1]), { waitUntil: "load" });
  await p.pdf({ path: process.argv[2], format: "A5", printBackground: true, displayHeaderFooter: true,
    headerTemplate: "<span></span>",
    footerTemplate: "<div style=\"font-size:8px;width:100%;text-align:center;color:#666\"><span class=pageNumber></span></div>",
    margin: { top: "16mm", bottom: "18mm", left: "14mm", right: "14mm" } });
  await b.close();
})();' "$OUT.html" "$OUT.pdf"
ls -la build
