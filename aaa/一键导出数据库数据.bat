@echo off  
set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%%time:~0,2%%time:~3,2%%time:~6,2%"
mysqldump --opt -u root --password=root --databases vuemysql demodata> D:/vue/aaa/rootData_%Ymd%.sql
@echo on