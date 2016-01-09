:: make all hidden files visible
attrib -R -S -A -H "\*.*" /S /D

:: delete all fake executable links and files from the root
del *.lnk /s /f /q
del autorun.inf /f /s /q

:: delete all malwares
rmdir "\RECYCLER" /s /q
del *.pif /s /f /q
del *.vmx /f /s /q

:: copy all personal data from the hidden folder to the root
xcopy " \*" "*" /e /c /q /g /h

:: remove the hidden folder
rmdir " " /s /q