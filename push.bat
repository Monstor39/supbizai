@echo off
chcp 65001 >nul
cd /d c:\Users\111\Desktop\autohub

echo ============================================
echo   Загрузка изменений на GitHub
echo ============================================
echo.

"C:\Program Files\Git\cmd\git.exe" status
echo.

"C:\Program Files\Git\cmd\git.exe" add index.html
echo [+] Файлы добавлены

"C:\Program Files\Git\cmd\git.exe" commit -m "Добавлена секция О нас"
echo [+] Коммит создан

"C:\Program Files\Git\cmd\git.exe" push
echo [+] Изменения отправлены на GitHub

echo.
echo ============================================
echo   ГОТОВО!
echo ============================================
pause
