# 🚀 Полная инструкция по деплою на GitHub Pages

## 📋 Шаг 1: Установка Git

1. Скачайте Git: https://git-scm.com/download/win
2. Установите (все настройки по умолчанию)
3. Перезапустите терминал/PowerShell

---

## 📋 Шаг 2: Создание репозитория на GitHub

1. Откройте https://github.com/new
2. **Repository name:** `supbizai`
3. **Public** (публичный репозиторий)
4. **НЕ** ставьте галочку "Add a README file"
5. **НЕ** ставьте галочку ".gitignore"
6. Нажмите **Create repository**

---

## 📋 Шаг 3: Загрузка файлов (2 способа)

### Способ А: Через GitHub Desktop (проще)

1. Скачайте GitHub Desktop: https://desktop.github.com/
2. File → Add Local Repository → Выберите папку `c:\Users\111\Desktop\autohub`
3. Нажмите "Create a new repository"
4. Имя: `supbizai`, Public
5. Нажмите "Publish repository"

### Способ Б: Через командную строку

Откройте PowerShell в папке проекта и выполните:

```powershell
cd c:\Users\111\Desktop\autohub

# Инициализация
git init
git add .
git commit -m "Initial commit"

# Замените YOUR_USERNAME на ваш логин GitHub
git remote add origin https://github.com/YOUR_USERNAME/supbizai.git

# Загрузка
git branch -M main
git push -u origin main
```

**Или запустите готовый скрипт:**
```
DEPLOY_TO_GITHUB.bat
```

---

## 📋 Шаг 4: Включение GitHub Pages

1. Откройте ваш репозиторий: https://github.com/YOUR_USERNAME/supbizai
2. Перейдите в **Settings** (настройки)
3. В левом меню выберите **Pages**
4. **Build and deployment:**
   - **Source:** Deploy from a branch
   - **Branch:** main / root (folder)
5. Нажмите **Save**

---

## 📋 Шаг 5: Проверка

Через 1-3 минуты сайт будет доступен по:

```
https://YOUR_USERNAME.github.io/supbizai/
```

**Пример:** https://quantumai.github.io/supbizai/

---

## 📋 Шаг 6: Настройка домена supbizai.ru

### 6.1 В GitHub Pages:

1. Settings → Pages → Custom domain
2. Введите: `supbizai.ru`
3. Нажмите **Save**
4. Поставьте галочку **Enforce HTTPS** (появится позже)

### 6.2 В панели Reg.ru:

1. Войдите в https://www.reg.ru/
2. Мои услуги → Домены → supbizai.ru
3. DNS-серверы → Изменить DNS-записи

**Добавьте 4 A-записи:**

| Тип | Имя поддомена | IP-адрес |
|-----|---------------|----------|
| A | @ | 185.199.108.153 |
| A | @ | 185.199.109.153 |
| A | @ | 185.199.110.153 |
| A | @ | 185.199.111.153 |

**Добавьте CNAME запись:**

| Тип | Имя поддомена | Значение |
|-----|---------------|----------|
| CNAME | www | YOUR_USERNAME.github.io |

**Пример:** Если ваш логин `quantumai`:
```
CNAME www quantumai.github.io
```

### 6.3 Подождите

DNS обновляется от 15 минут до 24 часов.

---

## 📋 Шаг 7: Обновление сайта

После изменений в `index.html`:

```powershell
cd c:\Users\111\Desktop\autohub
git add .
git commit -m "Update website"
git push
```

GitHub Pages автоматически обновится через 1-2 минуты.

---

## 🔧 Файлы для загрузки

| Файл | Загружать? | Примечание |
|------|-----------|------------|
| index.html | ✅ Да | Главный файл сайта |
| logo.png | ✅ Да | Логотип и favicon |
| image.png | ✅ Да | Изображения |
| image copy.png | ✅ Да | Изображения |
| image copy 2.png | ✅ Да | Изображения |
| og-image.html | ✅ Да | Open Graph изображение |
| dns-check.html | ✅ Да | Проверка DNS |
| vercel.json | ❌ Нет | Только для Vercel |
| .vercel/ | ❌ Нет | Папка Vercel |
| .vscode/ | ❌ Нет | Настройки VS Code |
| *.md файлы | ✅ Да | Документация |

---

## ⚠️ Важные замечания

1. **vercel.json** не нужен для GitHub Pages — можно не загружать
2. Репозиторий должен быть **PUBLIC** для бесплатного GitHub Pages
3. Для кастомного домена HTTPS включается автоматически (может занять время)
4. GitHub Pages имеет лимит: 100 GB трафика/месяц, 10 builds/час

---

## 🆘 Troubleshooting

### Ошибка: "src refspec main does not match any"
```powershell
git branch -M main
git push -u origin main
```

### Ошибка: "remote origin already exists"
```powershell
git remote remove origin
git remote add origin https://github.com/YOUR_USERNAME/supbizai.git
```

### Сайт не обновляется
- Очистите кэш браузера (Ctrl+Shift+R)
- Подождите 2-3 минуты
- Проверьте Actions в репозитории

### Домен не работает
- Проверьте DNS через https://dnschecker.org/
- Подождите до 24 часов
- Убедитесь что CNAME указывает правильно

---

## 📞 Полезные ссылки

- GitHub Pages docs: https://docs.github.com/en/pages
- DNS Checker: https://dnschecker.org/
- Reg.ru DNS: https://www.reg.ru/dns/
- GitHub Status: https://www.githubstatus.com/

---

**Готово!** 🎉

Ваш сайт SupBizAI теперь доступен на GitHub Pages!
