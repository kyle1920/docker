clear
rm docker.fpr
clear

sourceanalyzer -b docker -clean
sourceanalyzer -b docker . -verbose

sourceanalyzer -b docker -scan -verbose -f docker.fpr

auditworkbench docker.fpr &

