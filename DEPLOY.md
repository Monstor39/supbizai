# 🚀 SupBizAI — Деплой сайта

**Дата:** 11 марта 2026
**Файл:** `index.html`

**Домен:** https://supbizai.ru

---

## 📋 ПРЕ-ДЕПЛОЙ ЧЕКЛИСТ

### 1. Замени плейсхолдеры в index.html

Найди и замени `YOUR_DOMAIN` на свой домен (после деплоя):

```html
<!-- Строки ~17-25 -->
<meta property="og:image" content="https://YOUR_DOMAIN/og-image.png">
<meta property="og:url" content="https://YOUR_DOMAIN">
<link rel="canonical" href="https://YOUR_DOMAIN">
```

### 2. Обнови ссылки на соцсети

Найди в `index.html`:

```html
<!-- CTA секция ~строка 1770 -->
<a href="https://t.me/YOUR_USERNAME" class="cta-social-link">
<a href="https://wa.me/79001234567" class="cta-social-link">
<a href="mailto:email@example.com" class="cta-social-link">

<!-- Floating кнопка ~строка 2160 -->
<a href="https://t.me/YOUR_USERNAME" id="floatBtn">
```

### 3. Создай OG Image (опционально)

Для красивых превью в соцсетях создай изображение 1200×630px:
- Название: `og-image.png`
- Текст: "SupBizAI — Ваш бизнес работает пока вы спите"
- Положи в папку с сайтом

---

## 🌐 ВАРИАНТ 1 — Vercel (рекомендую)

**Почему:** Бесплатно, быстро, авто-деплой из Git, HTTPS

### Шаг 1: Регистрация
1. Зайди на [vercel.com](https://vercel.com)
2. Войди через GitHub

### Шаг 2: Установка CLI
```bash
npm install -g vercel
```

### Шаг 3: Деплой
```bash
cd c:\Users\111\Desktop\autohub
vercel login
vercel
```

### Шаг 4: Настройка домена
1. Зайди в dashboard Vercel
2. Project Settings → Domains
3. Добавь свой домен или используй `supbizai.vercel.app`

### Шаг 5: Обнови плейсхолдеры
Замени `YOUR_DOMAIN` в `index.html` на реальный URL

---

## 🐙 ВАРИАНТ 2 — GitHub Pages

**Почему:** Бесплатно, интегрировано с GitHub

### Шаг 1: Создай репозиторий
```bash
cd c:\Users\111\Desktop\autohub
git init
git add .
git commit -m "Initial commit"
```

### Шаг 2: Загрузи на GitHub
1. Создай репозиторий на github.com (например: `supbizai`)
2. Выполни команды из инструкции на GitHub
3. Обычно это:
   ```bash
   git remote add origin https://github.com/YOUR_USERNAME/supbizai.git
   git branch -M main
   git push -u origin main
   ```

### Шаг 3: Включи Pages
1. Settings → Pages
2. Source: `main` branch
3. Сохрани

### Шаг 4: Сайт доступен
`https://YOUR_USERNAME.github.io/supbizai/`

---

## 📦 ВАРИАНТ 3 — Netlify (drag & drop)

**Почему:** Мгновенный деплой без Git

### Шаг 1: Зайди на Netlify
1. [netlify.com](https://netlify.com)
2. Зарегистрируйся

### Шаг 2: Перетащи папку
1. Зайди в Sites
2. Перетащи папку `autohub` прямо в браузер
3. Сайт опубликован!

### Шаг 3: Настрой домен
Site Settings → Domain Management → Add custom domain

---

## 📊 ПОСЛЕ ДЕПЛОЯ

### 1. Яндекс Метрика

1. Зайди на [metrika.yandex.ru](https://metrika.yandex.ru)
2. Создай счётчик
3. Скопируй номер счётчика (XXXXXXXX)
4. В `index.html` найди комментарий `<!-- Яндекс.Метрика counter -->`
5. Раскомментируй код и замени `XXXXXXXX` на свой номер

### 2. Проверка формы

1. Открой сайт в браузере
2. Заполни форму CTA
3. Проверь Telegram — должно прийти уведомление

### 3. Проверка аналитики

Открой DevTools (F12) → Console и проверь:
```
📊 Event: section_view { section: "hero" }
📊 Event: click_audit_btn
📊 Event: calc_used { sliderId: "employees", value: "5" }
📊 Event: form_submit { name: "Тест", contact: "@test" }
```

---

## 🔧 ДОПОЛНИТЕЛЬНО

### Свой домен

Если покупаешь домен (например, на reg.ru или nic.ru):

1. Купи домен
2. В настройках DNS добавь:
   ```
   Тип: CNAME
   Имя: www
   Значение: cname.vercel-dns.com (для Vercel)
   ```

### Sitemap и robots.txt

Создай в папке проекта:

**robots.txt:**
```
User-agent: *
Allow: /
Sitemap: https://YOUR_DOMAIN/sitemap.xml
```

**sitemap.xml:**
```xml
<?xml version="1.0" encoding="UTF-8"?>
<urlset xmlns="http://www.sitemaps.org/schemas/sitemap/0.9">
  <url>
    <loc>https://YOUR_DOMAIN/</loc>
    <changefreq>monthly</changefreq>
    <priority>1.0</priority>
  </url>
</urlset>
```

---

## 🆘 TROUBLESHOOTING

### Форма не отправляется после деплоя

1. Проверь что токены вставлены в `index.html`
2. Открой DevTools → Console → проверь ошибки
3. Проверь что бот не заблокирован

### Сайт не открывается

1. Проверь что `index.html` в корне репозитория
2. Для GitHub Pages: подожди 1-2 минуты после пуша
3. Проверь Settings → Pages → источник

### Метрика не работает

1. Раскомментируй код в `index.html`
2. Замени `XXXXXXXX` на номер счётчика
3. Проверь DevTools → Console на ошибки

---

## 📚 РЕСУРСЫ

- **Vercel:** https://vercel.com/docs
- **GitHub Pages:** https://pages.github.com/
- **Netlify:** https://docs.netlify.com/
- **Яндекс Метрика:** https://yandex.ru/support/metrika/
- **Google Search Console:** https://search.google.com/search-console

---

**КОНЕЦ ИНСТРУКЦИИ**

*Сайт готов к публикации! 🎉*
