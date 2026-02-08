@echo off
echo Bos Access veritabani olusturuluyor...

powershell -Command "$catalog = New-Object -ComObject ADOX.Catalog; $catalog.Create('Provider=Microsoft.ACE.OLEDB.12.0;Data Source=%USERPROFILE%\Desktop\Library.accdb;'); [System.Runtime.InteropServices.Marshal]::ReleaseComObject($catalog); Write-Host 'Library.accdb Desktop ta olusturuldu!'"

pause