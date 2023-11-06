@echo off
goto :init

:header
    echo %__NAME% v%__VERSION%
    echo. Ce script permet de scanner un fichier ou un dossier,
	echo. afin verifier la potientielle presence de divers logiciels malveillants,
    echo. ou bien faire une verification de l integrite des donnees en utilisant Sigcheck[Microsoft]v2.90.
	echo. SOURCE : https://download.sysinternals.com/files/Sigcheck.zip
	echo. [necessary for execution stable]
	echo.
    echo.
    goto :eof

:usage
    echo USAGE:
    echo   %__BAT_NAME% [flags] "required argument" "optional argument" 
    echo.
    echo.  /?, --help           shows this help
    echo.  /v, --version        shows the version
    echo.  /e, --verbose        shows detailed output
    echo.  -f, --flag value     specifies a named parameter value
	echo.  -scantofile 		    scan file unique to virustotal
	echo.  -scantodir 		    scan directory/executable to virustotal
	echo.  -check 				check file integrity
    goto :eof

:version
    if "%~1"=="full" call :header & goto :eof
    echo %__VERSION%
    goto :eof

:missing_argument
    call :header
    call :usage
    echo.
    echo ****                                   ****
    echo ****    MISSING "REQUIRED ARGUMENT"    ****
    echo ****                                   ****
	echo.
	echo.
	echo. Example :
	echo. ****					   ****
	echo. **** Scan file or directory/integrity ****
	echo. ****					   ****
	echo.
	echo.  scan file unique to virustotal
	echo   %__BAT_NAME% -scantofile "c:\myfile.exe"
	echo.
	echo.  scan directory/executable to virustotal
	echo.  %__BAT_NAME% -scantodir "c:\myfoldername"
	echo.
	echo   check file integrity
	echo.  %__BAT_NAME% -check "c:\file_to_check.exe"
	echo. 
	echo.
    goto :eof

:init
    set "__NAME=%~n0"
    set "__VERSION=1.0"
    set "__YEAR=2023"

    set "__BAT_FILE=%~0"
    set "__BAT_PATH=%~dp0"
    set "__BAT_NAME=%~nx0"

    set "OptHelp="
    set "OptVersion="
    set "OptVerbose="

    set "UnNamedArgument="
    set "UnNamedOptionalArg="
    set "NamedFlag="

:parse
    if "%~1"=="" goto :validate

    if /i "%~1"=="/?"          call :header & call :usage "%~2" & goto :end
    if /i "%~1"=="-?"          call :header & call :usage "%~2" & goto :end
    if /i "%~1"=="--help"      call :header & call :usage "%~2" & goto :end
	
	if /i "%~1"=="-scantofile" goto :analyseFile
    if /i "%~1"=="-scantodir"  goto :analyseDir
    if /i "%~1"=="-check"      goto :checkIntegrity

    if /i "%~1"=="/v"          call :version      & goto :end
    if /i "%~1"=="-v"          call :version      & goto :end
    if /i "%~1"=="--version"   call :version full & goto :end

    if /i "%~1"=="/e"         set "OptVerbose=yes"  & shift & goto :parse
    if /i "%~1"=="-e"         set "OptVerbose=yes"  & shift & goto :parse
    if /i "%~1"=="--verbose"  set "OptVerbose=yes"  & shift & goto :parse

    if /i "%~1"=="--flag"     set "NamedFlag=%~2"   & shift & shift & goto :parse

    if not defined UnNamedArgument     set "UnNamedArgument=%~1"     & shift & goto :parse
    if not defined UnNamedOptionalArg  set "UnNamedOptionalArg=%~1"  & shift & goto :parse

    shift
    goto :parse

:validate
    if not defined UnNamedArgument call :missing_argument & goto :end

:main
    if defined OptVerbose (
        echo **** DEBUG IS ON
    )
	
	:analyseFile
	 echo scan file unique to virustotal [ %~2 ]
	 echo.
	 sigcheck64 -vr -vt "%~2"
	 echo.
	 goto end

		    
	:analyseDir
	 echo scan directory/executable to virustotal [ %~2 ]
	 echo.
		for /r %~2 %%X in (*.exe) do (
			echo.
			echo Nom du fichier analyse : %%X
			echo.
			sigcheck64 -u -e -vrs -vt "%%X"
			echo.
			echo.
		)
	 echo.
	 goto end

	:checkIntegrity
	  echo  Check file integrity [ %~2 ]
	  echo.
	  sigcheck64 -i "%~2"
	  echo.
	  goto end
	
    if defined UnNamedOptionalArg      echo UnNamedOptionalArg: "%UnNamedOptionalArg%"
    if not defined UnNamedOptionalArg  echo UnNamedOptionalArg: not provided

    if defined NamedFlag               echo NamedFlag:          "%NamedFlag%"
    if not defined NamedFlag           echo NamedFlag:          not provided

:end
    call :cleanup
	pause
    exit /B

:cleanup
    REM The cleanup function is only really necessary if you
    REM are _not_ using SETLOCAL.
    set "__NAME="
    set "__VERSION="
    set "__YEAR="

    set "__BAT_FILE="
    set "__BAT_PATH="
    set "__BAT_NAME="

    set "OptHelp="
    set "OptVersion="
    set "OptVerbose="

    set "UnNamedArgument="
    set "UnNamedArgument2="
    set "NamedFlag="

    goto :eof