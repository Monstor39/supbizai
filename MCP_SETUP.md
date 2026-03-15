# 🔧 MCP Servers Setup Guide для SupBizAI Project

**Последнее обновление:** 11 марта 2026
**Статус:** ✅ Конфигурация обновлена под актуальные пакеты

---

## 📦 Быстрая установка

```bash
# Основные MCP серверы (только рабочие!)
npm install -g @modelcontextprotocol/server-filesystem
npm install -g @modelcontextprotocol/server-memory
npm install -g @playwright/mcp

# Инструменты валидации (опционально)
npm install -g htmlhint
```

---

## 🎯 Актуальные MCP серверы (март 2026)

### 1. filesystem — Работа с файлами ✅
**Пакет:** `@modelcontextprotocol/server-filesystem` (v2026.1.14)
**Для чего:**
- Чтение/запись файлов проекта
- Поиск по кодовой базе
- Массовая замена текста
- Анализ структуры проекта

**Примеры запросов:**
```
"Прочитай index.html и найди все CDN ссылки"
"Создай копию index.html как index.backup.html"
"Замени все вхождения 'SupBizAI' на 'MyAuto'"
```

---

### 2. memory — Долговременная память ✅
**Пакет:** `@modelcontextprotocol/server-memory` (v2026.1.26)
**Для чего:**
- Сохранение контекста между сессиями
- Запоминание предпочтений (цвета, шрифты)
- История изменений и решений

**Примеры запросов:**
```
"Запомни что используем цветовую схему #0A0A0F + #7C3AED"
"Какие решения мы приняли по дизайну?"
"Сохрань список CDN которые используем"
```

---

### 3. playwright — Браузерная автоматизация ✅
**Пакет:** `@playwright/mcp` (v0.0.68) — **замена puppeteer**
**Для чего:**
- Скриншоты всех секций сайта
- Проверка responsive дизайна
- Тестирование кликов и форм
- Lighthouse аудит производительности

**Примеры запросов:**
```
"Сделай скриншот hero секции"
"Проверь что все кнопки кликабельны"
"Запусти Lighthouse аудит"
"Проверь mobile версию на 375px"
```

---

## ❌ УДАЛЕНЫ ИЗ КОНФИГУРАЦИИ

| Сервер | Причина | Альтернатива |
|--------|---------|--------------|
| `server-fetch` | Удалён из npm | Использовать shell команды или встроенный fetch Qwen |
| `server-github` | Deprecated | Использовать git CLI напрямую |
| `server-puppeteer` | Deprecated | Заменён на `@playwright/mcp` |
| `openrouter-mcp` | Не существует | OpenRouter работает напрямую через API |

---

## 🔑 Настройка OpenRouter API (без MCP сервера)

OpenRouter — это OpenAI-совместимый endpoint, работает напрямую:

**1. Получите API ключ:**
- https://openrouter.ai/keys
- Create new key → скопируйте ключ

**2. Добавьте в переменные окружения Windows:**

```powershell
# Через PowerShell (постоянно)
[Environment]::SetEnvironmentVariable("OPENROUTER_API_KEY", "sk-or-v1-...", "User")

# Или через cmd (постоянно)
setx OPENROUTER_API_KEY "sk-or-v1-..."

# Или временно для текущей сессии
$env:OPENROUTER_API_KEY="sk-or-v1-..."
```

**3. Проверка работы API:**

```bash
curl https://openrouter.ai/api/v1/models -H "Authorization: Bearer YOUR_KEY"
```

**4. Базовый URL для интеграций:**
```
Base URL: https://openrouter.ai/api/v1
Формат: Совместим с OpenAI API
```

---

## ⚙️ Конфигурация .vscode/mcp.json

Актуальная конфигурация (только рабочие серверы):

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "c:\\Users\\111\\Desktop\\autohub"],
      "description": "Работа с файлами проекта"
    },
    "memory": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-memory"],
      "description": "Память между сессиями"
    },
    "playwright": {
      "command": "npx",
      "args": ["-y", "@playwright/mcp"],
      "description": "Браузерная автоматизация через Playwright"
    }
  }
}
```

---

## 🚀 Проверка установки

```bash
# Проверить версии пакетов
npm show @modelcontextprotocol/server-filesystem version
npm show @modelcontextprotocol/server-memory version
npm show @playwright/mcp version

# Тест запуска серверов
npx -y @modelcontextprotocol/server-filesystem --version
npx -y @modelcontextprotocol/server-memory --version
npx -y @playwright/mcp --version
```

---

## 📋 Чеклист настройки

- [ ] Node.js 18+ установлен
- [ ] MCP серверы установлены через npm
- [ ] `.vscode/mcp.json` обновлён
- [ ] OPENROUTER_API_KEY добавлен в переменные окружения
- [ ] VS Code перезапущен
- [ ] MCP панель работает

---

## 🎯 Рекомендуемый workflow

1. **FileSystem** → Чтение/анализ `index.html`
2. **OpenRouter API** → Генерация нового кода (напрямую)
3. **FileSystem** → Запись изменений
4. **Playwright** → Скриншот для проверки
5. **Memory** → Сохранение контекста

---

## 🆘 Troubleshooting

**MCP не запускается:**
```bash
# Очистить npm кэш
npm cache clean --force

# Переустановить сервер
npm uninstall -g @modelcontextprotocol/server-filesystem
npm install -g @modelcontextprotocol/server-filesystem
```

**VS Code не видит MCP:**
1. Убедись что расширение MCP установлено
2. Перезапусти VS Code полностью
3. Проверь путь в команде (используй абсолютный)

**Permission denied на Windows:**
```powershell
# Запустить PowerShell от имени администратора
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
```

---

## 📚 Ресурсы

- **MCP Protocol:** https://modelcontextprotocol.io/
- **Playwright:** https://playwright.dev/
- **OpenRouter:** https://openrouter.ai/
- **npm registry:** https://www.npmjs.com/
