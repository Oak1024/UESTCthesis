set jobname=uestcthesis
@echo off
call clean.bat
del %jobname%.pdf
if exist %jobname%.pdf (
echo 请关闭打开的%jobname%.pdf再重新执行。
pause
exit
) 
pdflatex .\%jobname%.dtx
makeindex -s gglo.ist -o %jobname%.gls %jobname%.glo
pdflatex .\%jobname%.dtx
latex .\%jobname%.ins

echo ****************************************************************************
echo 正式编译前应该访问https://github.com/shifujun/UESTCthesis检查模板是否有更新！
echo ****************************************************************************
pause