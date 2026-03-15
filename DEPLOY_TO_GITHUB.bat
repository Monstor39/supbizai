@echo off
chcp 65001 >nul
echo ============================================
echo   Деплой SupBizAI на GitHub Pages
echo ============================================
echo.

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo [!] Git не найден!
    echo.
    echo Скачайте и установите Git: https://git-scm.com/download/win
    echo После установки перезапустите этот скрипт.
    echo.
    pause
    exit /b 1
)

echo [+] Git установлен
echo.

REM Check if already initialized
if exist ".git" (
    echo [i] Git репозиторий уже инициализирован
) else (
    echo [+] Инициализация git репозитория...
    git init
    echo.
)

REM Create .gitignore if not exists
if not exist ".gitignore" (
    echo [+] Создание .gitignore...
    (
        echo .vscode/
        echo .vercel/
        echo *.log
        echo *.tmp
        echo Thumbs.db
        echo .DS_Store
    ) > .gitignore
)

echo [+] Добавление файлов...
git add .
echo.

echo [+] Создание коммита...
git commit -m "Initial commit - SupBizAI website"
echo.

echo ============================================
echo   СЛЕДУЮЩИЙ ШАГ: Создайте репозиторий
echo ============================================
echo.
echo 1. Откройте https://github.com/new
echo 2. Имя репозитория: supbizai
echo 3. Выберите PUBLIC
echo 4. НЕ инициализируйте README (оставьте пустым)
echo 5. Нажмите Create repository
echo.
echo После создания вставьте команду из инструкции GitHub:
echo.
echo git remote add origin https://github.com/YOUR_USERNAME/supbizai.git
echo git branch -M main
echo git push -u origin main
echo.
pause
