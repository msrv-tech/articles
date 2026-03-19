# Статьи (отдельный репозиторий)

Каталог **`D:\PROG\articles`** — **корень публичного Git-репозитория** со статьями и медиа. Он **вынесен за пределы** приватного проекта [`Иски`](../Иски) и с ним **не связан** одним общим `.git`.

Открывать в редакторе удобно через multi-root workspace: [`../iski-and-articles.code-workspace`](../iski-and-articles.code-workspace).

## Структура (дерево)

```
.
├── README.md                 ← этот файл
├── .gitignore
└── odin-sait-chetyre-iska/
    ├── README.md             ← черновик статьи для Хабра
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

1. Создай на GitHub **пустой публичный** репозиторий.
2. В этом каталоге:

```bash
cd D:\PROG\articles
git remote add origin https://github.com/USER/REPO.git
git branch -M main
git push -u origin main
```

(Первый коммит уже можно сделать локально — см. историю `git log`.)

Перед пушем проверь, что в коммит не попадают лишние секреты. Вложенных `.git` в подпапках быть не должно (см. [`.gitignore`](.gitignore)).
