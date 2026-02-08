@echo off
echo Biblioteca App - Build ve Calistir
echo ===================================

cd BibliotecaApp

echo 1. Projeyi temizleniyor...
dotnet clean

echo 2. Projeyi build ediliyor...
dotnet build

if %ERRORLEVEL% EQU 0 (
    echo 3. Build basarili! Uygulama calistiriliyor...
    dotnet run
) else (
    echo Build hatasi olustu!
    pause
)