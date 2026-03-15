# 🚀 Деплой на GitHub Pages

## Шаг 1: Установите Git

1. Скачайте с https://git-scm.com/download/win
2. Установите (все настройки по умолчанию)

## Шаг 2: Создайте репозиторий на GitHub

1. Откройте https://github.com/new
2. Имя репозитория: `supbizai`
3. Сделайте **Public**
4. Нажмите **Create repository**

## Шаг 3: Загрузите файлы

Откройте PowerShell в папке проекта и выполните:

```powershell
cd c:\Users\111\Desktop\autohub

# Инициализация
git init
git add .
git commit -m "Initial commit"

# Добавьте ваш репозиторий (замените YOUR_USERNAME на ваш GitHub логин)
git remote add origin https://github.com/YOUR_USERNAME/supbizai.git

# Загрузка
git branch -M main
git push -u origin main
```

## Шаг 4: Включите GitHub Pages

1. Откройте ваш репозиторий на GitHub
2. Settings → Pages
3. **Source**: Deploy from a branch
4. **Branch**: main → root
5. Нажмите **Save**

## Шаг 5: Сайт доступен

Через 1-2 минуты сайт будет доступен по:
```
https://YOUR_USERNAME.github.io/supbizai/
```

## Шаг 6: Настройте домен (опционально)

1. В Settings → Pages → Custom domain
2. Введите: `supbizai.ru`
3. Нажмите **Save**

## Шаг 7: Обновите DNS на Reg.ru

В панели Reg.ru добавьте DNS записи:

| Тип | Имя | Значение |
|-----|-----|----------|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |
| CNAME | www | YOUR_USERNAME.github.io |

**Готово!** Сайт будет доступен по https://supbizai.ru

---

## Проверка

1. Откройте https://YOUR_USERNAME.github.io/supbizai/
2. Проверьте что всё работает
3. Если всё ок — настраивайте домен
