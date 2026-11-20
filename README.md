# Нутриціологія для спортсменів

Книга-курс українською: 8 модулів, бонусний модуль про спортивні добавки й додатки (таблиці, алгоритм складання раціону, щоденник, словник, джерела).

## Готові файли

- PDF (A5, 95 сторінок): [`book/build/nutriciologiya-dlya-sportsmeniv.pdf`](book/build/nutriciologiya-dlya-sportsmeniv.pdf)
- EPUB (для електронних книг): [`book/build/nutriciologiya-dlya-sportsmeniv.epub`](book/build/nutriciologiya-dlya-sportsmeniv.epub)
- HTML (один файл): [`book/build/nutriciologiya-dlya-sportsmeniv.html`](book/build/nutriciologiya-dlya-sportsmeniv.html)
- Markdown (один файл): [`book/build/nutriciologiya-dlya-sportsmeniv.md`](book/build/nutriciologiya-dlya-sportsmeniv.md)

## Структура

| Файл | Розділ |
|---|---|
| `book/00-vstup.md` | Передмова |
| `book/01-modul-1.md` | Харчування — частина спортивного результату |
| `book/02-modul-2.md` | Вуглеводи та енергія в спорті |
| `book/03-modul-3.md` | Білок: більше, ніж просто м'язи |
| `book/04-modul-4.md` | Жири та нервова система спортсмена |
| `book/05-modul-5.md` | Вода, сіль та електроліти |
| `book/06-modul-6.md` | Харчування до, під час і після тренувань |
| `book/07-modul-7.md` | Харчування на різних етапах підготовки |
| `book/08-modul-8.md` | Система харчування в реальному житті |
| `book/09-bonus.md` | Спортивні добавки |
| `book/10-dodatky.md` | Додатки |

## Збірка

Потрібні `pandoc`, Node.js і Playwright (Chromium):

```bash
./book/build.sh
```
