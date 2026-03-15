# 🔴 НЕВЫПОЛНЕННЫЕ ЗАДАЧИ — SupBizAI

**Дата создания:** 11 марта 2026
**Проект:** SupBizAI — Автоматизация бизнеса
**Сайт:** https://supbizai.ru

---

## ✅ ЧТО УЖЕ СДЕЛАНО

- [x] Сайт разработан (index.html)
- [x] Telegram интеграция (бот @GolodBizAi)
- [x] Логотип SupBizAI в навбаре и footer (с сиянием)
- [x] Favicon с logo.png
- [x] OG Image создан (og-image.png)
- [x] vercel.json настроен
- [x] Деплой на Vercel выполнен
- [x] Яндекс Метрика обновлена (107289831)
- [x] Домен обновлён (supbizai.vercel.app)

---

## 🔴 ЗАДАЧИ КОТОРЫЕ НУЖНО ВЫПОЛНИТЬ

### 1. Персонализация контактов

**Файл:** `index.html`

Найди и замени контактные данные в секции CTA (~строка 1770) и Footer (~строка 2600):

```html
<!-- Замени на свои данные -->
<a href="https://t.me/YOUR_USERNAME" class="cta-social-link">
<a href="https://wa.me/79001234567" class="cta-social-link">
<a href="mailto:email@example.com" class="cta-social-link">
```

### 2. Настроить Telegram уведомления

**Файл:** `index.html` (~строка 2850)

```javascript
const TELEGRAM_BOT_TOKEN = ''; // Вставь токен бота
const TELEGRAM_CHAT_ID = '';   // Вставь Chat ID
```

**Как получить:**
1. @BotFather → создать бота → получить токен
2. Написать боту → https://api.telegram.org/bot[TOKEN]/getUpdates → найти chat.id

### 3. Добавить второй кейс

**Файл:** `index.html` (~строка 1520)

Заполни результаты для "Кейс 2: Система КРУ для предприятия"

---

## 📋 ТЕКУЩАЯ КОНФИГУРАЦИЯ

| Параметр | Значение |
|----------|----------|
| **Сайт** | https://supbizai.vercel.app |
| **Telegram бот** | @GolodBizAi |
| **Bot Token** | 8766127276:AAGl9J3OEF1ENbV_uYIQFfWSAqSqTe_k-lk |
| **Chat ID** | 8464652226 |
| **WhatsApp** | 79991234567 |
| **Email** | info@quantumai.ru |
| **Яндекс Метрика** | 107289831 |

---

## 🚀 БЫСТРЫЙ ДЕПЛОЙ

```bash
cd c:\Users\111\Desktop\autohub
vercel --prod
```

---

## 📊 ПРОВЕРКА ПОСЛЕ ДЕПЛОЯ

1. Открой https://supbizai.vercel.app
2. Нажми F12 → Console
3. Проверь что нет ошибок
4. Кликни по кнопке "Получить бесплатный аудит"
5. В консоли должно быть: `📊 Event: click_audit_btn`
6. Проверь Яндекс Метрику: https://metrika.yandex.ru → счётчик 107289831

---

**СОХРАНИ ЭТОТ ФАЙЛ!**
*Открой его когда продолжишь работу над проектом*
