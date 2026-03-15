# ⚡ Quick Test — Проверка среды разработки

**Дата:** 11 марта 2026
**Проект:** SupBizAI

---

## 1. Проверка Node.js

```bash
node --version
npm --version
```

**Ожидаемый результат:**
- Node.js: `v18+` (текущий: `v24.14.0`) ✅
- npm: `9+` (текущий: `11.9.0`) ✅

---

## 2. Проверка MCP серверов

### filesystem
```bash
npx -y @modelcontextprotocol/server-filesystem --version
```

### memory
```bash
npx -y @modelcontextprotocol/server-memory --version
```

### playwright
```bash
npx -y @playwright/mcp --version
```

**Ожидаемый результат:** Серверы запускаются без ошибок

---

## 3. Проверка OpenRouter API

```bash
curl -s https://openrouter.ai/api/v1/models -H "Authorization: Bearer YOUR_API_KEY"
```

**Или через PowerShell:**
```powershell
Invoke-RestMethod -Uri "https://openrouter.ai/api/v1/models" -Headers @{ Authorization = "Bearer $env:OPENROUTER_API_KEY" }
```

**Ожидаемый результат:** JSON со списком доступных моделей

---

## 4. Проверка CDN (для index.html)

```bash
# Lucide Icons
curl -s -o /dev/null -w "%{http_code}" https://unpkg.com/lucide@latest

# Google Fonts
curl -s -o /dev/null -w "%{http_code}" "https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&family=Space+Grotesk:wght@500;600;700&display=swap"
```

**Ожидаемый результат:** `200` для обоих CDN

---

## 5. Запуск проекта

### Windows
```bash
start index.html
```

### Через локальный сервер
```bash
npx http-server . -p 8080
```
Затем откройте: http://localhost:8080

---

## 6. Валидация HTML (опционально)

```bash
# Если установлен htmlhint
htmlhint index.html

# Или через W3C API
curl -X POST -H "Content-Type: text/html" --data-binary @index.html "https://validator.w3.org/nu/?out=json"
```

---

## ✅ Чеклист полной проверки

| Компонент | Команда | Статус |
|-----------|---------|--------|
| Node.js | `node --version` | ☐ |
| npm | `npm --version` | ☐ |
| MCP filesystem | `npx @modelcontextprotocol/server-filesystem` | ☐ |
| MCP memory | `npx @modelcontextprotocol/server-memory` | ☐ |
| MCP playwright | `npx @playwright/mcp` | ☐ |
| OpenRouter API | `curl ... /models` | ☐ |
| CDN Lucide | `curl ... unpkg.com/lucide` | ☐ |
| CDN Google Fonts | `curl ... fonts.googleapis.com` | ☐ |
| Сайт в браузере | `start index.html` | ☐ |

---

## 🐛 Если что-то не работает

### Node.js не найден
→ Переустановить с https://nodejs.org/

### MCP серверы не запускаются
```bash
npm cache clean --force
npm install -g @modelcontextprotocol/server-filesystem @modelcontextprotocol/server-memory @playwright/mcp
```

### OpenRouter API возвращает ошибку
→ Проверьте что `OPENROUTER_API_KEY` установлен в переменных окружениях

### Сайт не открывается
→ Проверьте консоль браузера (F12) на наличие ошибок

---

**Контакт для поддержки:** См. `PROJECT_CONTEXT.md`
