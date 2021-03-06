@echo off
REM This batch file has been tested on
REM   computer: Pentium
REM         OS: Windows 95 OSR 2
REM   compiler: Lahey F90 V4.50
REM          C: Borland C++ 4.5
REM     OpenGL: Microsoft OpenGL, Glut 3.6 with patch, f90gl 1.1.4

REM ------------- User configuration parameters ---------------

REM modify these for your system

REM the directories containing the OpenGL libraries, f90gl libraries, GLUT
REM libraries, and f90gl GLUT libraries
set OGLLIBDIR=-libp ..\lib

REM the fortran 90 libraries for OpenGL, including GLUT, GLU and OpenGL

set F90GLUTLIB=-l f90GL.lib,f90GLU.lib,f90GLUT.lib,glut32.lib,GLU32.lib,OPENGL32.lib

REM other libraries
set WINLIB=

REM the f90 compiler flag for specifying the location of MOD files
set MODS=-mod ..\lib

REM fortran 90 compiler and compiler flags
set F90C=lf90
set F90FLAGS=-win -nomap

REM fortran 90 compiler flag for fixed source form
set FFIXED=-fix

REM ----------- end of user configuration parameters ------------

REM select example to compile; default is all of them

if "%1"=="all" goto all
if "%1"=="blender" goto blender
if "%1"=="checker" goto checker
if "%1"=="eps" goto eps
if "%1"=="fbitfont" goto fbitfont
if "%1"=="fscene" goto fscene
if "%1"=="glutdino" goto glutdino
if "%1"=="logo" goto logo
if "%1"=="molehill" goto molehill
if "%1"=="olympic" goto olympic
if "%1"=="plotfunc" goto plotfunc
if "%1"=="polyoff" goto polyoff
if "%1"=="scube" goto scube
if "%1"=="stars" goto stars
if "%1"=="sphere" goto sphere
if "%1"=="trivial" goto trivial
if "%1"=="modview" goto modview
if "%1"=="clean" goto clean

:all
call mf8nlob blender
call mf8nlob checker
call mf8nlob eps
call mf8nlob fbitfont
call mf8nlob fscene
call mf8nlob glutdino
call mf8nlob logo
call mf8nlob molehill
call mf8nlob olympic
call mf8nlob plotfunc
call mf8nlob polyoff
call mf8nlob scube
call mf8nlob stars
call mf8nlob sphere
call mf8nlob trivial                                  
call mf8nlob modview                                  
goto done

REM blender

:blender
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% blender.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM checker

:checker
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% checker.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM eps

:eps
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% eps.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM fbitfont

:fbitfont
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% fbitfont.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM fscene

:fscene
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% fscene.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM glutdino

:glutdino
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% glutdino.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM logo

:logo
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% logo.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM molehill

:molehill
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% molehill.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM olympic

:olympic
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% olympic.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM plotfunc

:plotfunc
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% plotfunc.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM polyoff

:polyoff
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% polyoff.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM scube

:scube
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% scube.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM stars

:stars
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% stars.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM sphere

:sphere
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% sphere.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM trivial

:trivial
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% trivial.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM modview

:modview
set 386link=%OGLLIBDIR% %F90GLUTLIB% %WINLIB%
%F90C% modview.f90 %F90FLAGS% %MODS%
set 386link=
goto done

REM clean

:clean
del *.obj
del *.mod
del *.exe
del *.map

:done
