set jobname=uestcthesis
@echo off
call clean.bat
del %jobname%.pdf
if exist %jobname%.pdf (
echo ��رմ򿪵�%jobname%.pdf������ִ�С�
pause
exit
) 
pdflatex .\%jobname%.dtx
makeindex -s gglo.ist -o %jobname%.gls %jobname%.glo
pdflatex .\%jobname%.dtx
latex .\%jobname%.ins

echo ****************************************************************************
echo ��ʽ����ǰӦ�÷���https://github.com/shifujun/UESTCthesis���ģ���Ƿ��и��£�
echo ****************************************************************************
pause