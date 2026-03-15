@echo off
echo ============================================
echo MCP Servers Installation Script
echo для SupBizAI Project
echo ============================================
echo.

echo [1/7] Проверка Node.js...
node --version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js не установлен!
    echo Установите с https://nodejs.org/
    pause
    exit /b 1
)
echo [OK] Node.js найден
echo.

echo [2/7] Очистка npm кэша...
call npm cache clean --force
echo.

echo [3/7] Установка @modelcontextprotocol/server-filesystem...
call npm install -g @modelcontextprotocol/server-filesystem
echo.

echo [4/7] Установка @modelcontextprotocol/server-fetch...
call npm install -g @modelcontextprotocol/server-fetch
echo.

echo [5/7] Установка @modelcontextprotocol/server-github...
call npm install -g @modelcontextprotocol/server-github
echo.

echo [6/7] Установка @modelcontextprotocol/server-puppeteer...
call npm install -g @modelcontextprotocol/server-puppeteer
echo.

echo [7/7] Установка @modelcontextprotocol/server-memory...
call npm install -g @modelcontextprotocol/server-memory
echo.

echo ============================================
echo [OK] Установка завершена!
echo ============================================
echo.
echo Далее:
echo 1. Открой mcp.template.json
echo 2. Замени плейсхолдеры ключей на реальные
echo 3. Скопируй содержимое в .vscode\mcp.json
echo 4. Перезапусти VS Code
echo.
echo Для проверки:
echo   npx -y @modelcontextprotocol/server-filesystem --help
echo.
pause
