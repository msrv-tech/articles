# Статьи (отдельный репозиторий)

**Публично на GitHub:** https://github.com/msrv-tech/articles

Каталог **`D:\PROG\articles`** — **корень публичного Git-репозитория** со статьями и медиа. Он **вынесен за пределы** приватного проекта [`Иски`](../Иски) и с ним **не связан** одним общим `.git`.

Открывать в редакторе удобно через multi-root workspace: [`../iski-and-articles.code-workspace`](../iski-and-articles.code-workspace).

## Структура (дерево)

```
.
├── README.md                 ← этот файл
├── .gitignore
└── odin-sait-chetyre-iska/
    ├── README.md             ← указатель на статью
    ├── article.md            ← черновик статьи для Хабра (публичная копия)
    └── media/
        ├── aeroplan_animator_photo.jpg
        ├── aeroplan_reference_1.jpg
        ├── aeroplan_reference_2.jpg
        ├── aeroplan_reference_3.jpg
        ├── aeroplan_reference_4.jpg
        ├── dneprovsky_animator_photo.jpg
        ├── melnitsa_animator_photo_1.jpg
        ├── melnitsa_animator_photo_2.jpg
        ├── melnitsa_luntik_reference.jpg
        ├── melnitsa_roza_reference.jpg
        └── siniy_traktor_reference.png
```

## Публикация на GitHub

Нужен [GitHub CLI](https://cli.github.com/) (`gh`) и вход: `gh auth login`.

В терминале **вне Cursor** (где `gh auth status` показывает аккаунт) можно одним шагом:

```powershell
cd D:\PROG\articles
.\publish-github.ps1
```

Или вручную — создать **публичный** репозиторий и запушить `main` (имя репо по умолчанию — `articles`; если занято — укажи другое в скрипте `-RepoName` или ниже):

```bash
cd D:\PROG\articles
gh repo create articles --public --source=. --remote=origin --push --description "Статьи и медиа"
```

Если репозиторий уже создан на сайте — только привязка и пуш:

```bash
git remote add origin https://github.com/msrv-tech/articles.git
git push -u origin main
```

Перед пушем проверь, что в коммит не попадают лишние секреты. Вложенных `.git` в подпапках быть не должно (см. [`.gitignore`](.gitignore)).
