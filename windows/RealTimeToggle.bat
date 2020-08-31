@echo off
powershell -Command "Start-Process 'cmd' -Verb RunAs -ArgumentList '/c "powershell.exe -ExecutionPolicy Bypass -File "E:\Scripts\RealTimeToggle.ps1""'"
