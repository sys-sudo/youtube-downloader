::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAnk
::fBw5plQjdG8=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
setlocal

rem Nama file yang akan diunduh
set "outputfile=YoutubeDownloader.exe"

rem Cek apakah file sudah ada
if exist "%outputfile%" (
    echo File %outputfile% sudah ada.
) else (
    rem Cek arsitektur sistem
    if "%PROCESSOR_ARCHITECTURE%"=="AMD64" (
        set "url=https://github.com/sys-sudo/youtube-downloader/releases/download/64bit/Youtube.Downloader.by.ReactZIP.64bit.exe"
    ) else (
        set "url=https://github.com/sys-sudo/youtube-downloader/releases/download/32bit/Youtube.Downloader.by.ReactZIP.32bit.exe"
    )

    rem Mulai proses download
    echo Mendownload file dari %url% ...
    curl -L -o "%outputfile%" "%url%"

    rem Periksa status pengunduhan
    if %errorlevel% neq 0 (
        echo Gagal mendownload file.
        goto end
    ) else (
        echo File berhasil diunduh ke %cd%\%outputfile%.
    )
)

rem Jalankan file YoutubeDownloader.exe
echo Menjalankan %outputfile% ...
start "" "%outputfile%"

:end
endlocal
