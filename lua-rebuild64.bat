call "C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvars64.bat"

copy Lua.Makefile.nmake .\lua\src\Makefile.nmake

cd .\lua\src

nmake /f Makefile.nmake clean

nmake /f Makefile.nmake dll x64=1
copy lua53_64.lib ..
copy lua53_64.dll ..

nmake /f Makefile.nmake lib x64=1
copy liblua53_64.lib ..

pause