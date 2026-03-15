# 🔧 SupBizAI — Персонализация

**Дата:** 11 марта 2026
**Файл:** `index.html`

---

## 📝 ЧТО НУЖНО ИЗМЕНИТЬ

### 1. Контактные данные (соцсети)

Найди в `index.html` секцию CTA (~строка 1720) и Footer (~строка 1740):

```html
<!-- CTA Social Links -->
<a href="https://t.me/" class="cta-social-link">→ вставь свой username</a>
<a href="https://wa.me/" class="cta-social-link">→ вставь свой номер</a>
<a href="mailto:" class="cta-social-link">→ вставь свой email</a>
<a href="https://linkedin.com/" class="cta-social-link">→ вставь профиль</a>
```

### 2. Floating кнопка Telegram

Найди перед закрывающим `</body>` (~строка 2065):

```html
<a href="https://t.me/YOUR_USERNAME" target="_blank" id="floatBtn">
```

Замени `YOUR_USERNAME` на свой ник в Telegram.

---

## 📬 ПОДКЛЮЧЕНИЕ TELEGRAM УВЕДОМЛЕНИЙ

### Шаг 1: Создай бота

1. Напиши **@BotFather** в Telegram
2. Отправь команду `/newbot`
3. Придумай имя боту (например: `SupBizAI Lead Bot`)
4. Придумай username (например: `SupBizAILeadBot`)
5. Скопируй **токен**: `1234567890:ABCdefGHIjklMNOpqrsTUVwxyz`

---

### Шаг 2: Получи свой Chat ID

1. Напиши своему боту любое сообщение (например: `/start`)
2. Открой в браузере:
   ```
   https://api.telegram.org/bot[ТВОЙ_ТОКЕН]/getUpdates
   ```
   Пример:
   ```
   https://api.telegram.org/bot1234567890:ABCdef.../getUpdates
   ```
3. Найди в ответе `"chat":{"id": XXXXXXXX}` — это твой **Chat ID**

---

### Шаг 3: Вставь в index.html

Найди в JavaScript секции (~строка 1907):

```javascript
const TELEGRAM_BOT_TOKEN = ''; // Вставь токен сюда
const TELEGRAM_CHAT_ID = '';   // Вставь Chat ID сюда
```

Замени на:

```javascript
const TELEGRAM_BOT_TOKEN = '1234567890:ABCdefGHIjklMNOpqrsTUVwxyz';
const TELEGRAM_CHAT_ID = '123456789';
```

---

### Шаг 4: Проверка

1. Открой `index.html` в браузере
2. Заполни форму CTA
3. Нажми «Отправить»
4. Проверь Telegram — должно прийти сообщение с данными

---

## 📨 КАК ВЫГЛЯДИТ УВЕДОМЛЕНИЕ

```
🔥 НОВАЯ ЗАЯВКА С САЙТА SUPBIZAI

👤 Имя: Иван
📱 Контакт: @ivanov
🕐 Время: 11.03.2026 14:30

💰 Данные калькулятора:
• Сотрудников: 5
• Зарплата: 80 тыс ₽
• Потенциальная экономия: 1 530 000 ₽/год

📍 Источник: Сайт SupBizAI — форма CTA
```

---

## 🎨 ДОПОЛНИТЕЛЬНАЯ ПЕРСОНАЛИЗАЦИЯ

### Изменить цвета

Найди в `<style>` (~строка 10):

```css
--accent-purple: #7C3AED;      /* Основной фиолетовый */
--accent-green: #10B981;       /* Зелёный для цифр */
--accent-blue: #3B82F6;        /* Синий акцент */
```

### Изменить шрифты

Найди в `<head>` Google Fonts ссылку и замени на нужные.

### Изменить тексты

Все тексты находятся в HTML секциях:
- **Hero:** ~строка 1200
- **Pain Points:** ~строка 1250
- **Timeline:** ~строка 1380
- **ROI Calculator:** ~строка 1460
- **Cases:** ~строка 1520
- **Industries:** ~строка 1600
- **CTA:** ~строка 1700

---

## 🚀 ПРОВЕРКА ИЗМЕНЕНИЙ

1. Открой `index.html` в браузере
2. Проверь что все ссылки работают
3. Проверь отправку формы в Telegram
4. Проверь floating кнопку (справа внизу)

---

## 🆘 TROUBLESHOOTING

### Форма не отправляется

1. Проверь что токены вставлены без лишних пробелов
2. Открой DevTools (F12) → Console → проверь ошибки
3. Проверь что бот не заблокирован

### Бот не присылает сообщения

1. Убедись что ты написал боту `/start`
2. Проверь Chat ID — должен быть числом
3. Проверь токен — должен быть в формате `1234567890:ABCdef...`

### Floating кнопка не видна

1. Проверь что `YOUR_USERNAME` заменён на реальный ник
2. Проверь z-index — должен быть 9999

---

## 📚 РЕСУРСЫ

- **Telegram Bot API:** https://core.telegram.org/bots/api
- **BotFather:** https://t.me/BotFather
- **Получить Chat ID:** https://api.telegram.org/bot[TOKEN]/getUpdates

---

**КОНЕЦ ИНСТРУКЦИИ**

*Сохраните этот файл для быстрой персонализации проекта*
