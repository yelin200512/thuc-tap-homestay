@echo off
cd /d "%~dp0"
echo Dang khoi dong Vite (npm run dev)...
start "Vite - Dookki Homestay" cmd /k "npm run dev"
echo Dang khoi dong may chu web tai http://127.0.0.1:8000 ...
cd public
php -S 127.0.0.1:8000 ..\vendor\laravel\framework\src\Illuminate\Foundation\resources\server.php