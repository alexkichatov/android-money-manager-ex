:: copy translation of the dropbox manual.
:: Called from update_translations.

::@echo off 

set src=%~1
set dest_root=%~2

:: set VAR="%~1"
set lang=%~3
set country=%~4
set locale=%~5

:: source directory
if exist %src%\%lang% (
	set src_lang=%lang%
) 
if exist %src%\%lang%-%country% (
	set src_lang=%lang%-%country%
)
@echo %src_lang%

:: source, values directory. 
::Hebrew is specific (he, iw-IL). This is to accommodate case with different codes.
if [%locale%] == [] (
	set locale=%lang%
)

:: Destination directory.
if exist %dest_root%\raw-%lang% (
	set dest=%dest_root%\raw-%lang%
)
if exist %dest_root%\raw-%lang%-r%country% (
	set dest=%dest_root%\raw-%lang%-r%country%
)


::echo %src%\%src_lang%\res\values-%locale%-r%country%\*.* %dest%

copy %src%\%src_lang%\help\help_dropbox.html %dest%