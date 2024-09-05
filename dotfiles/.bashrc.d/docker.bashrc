alias mysql-log-on="dc exec -it mysql mysql -u root -proot -e \"SET global log_output = 'FILE'; SET global general_log_file='/tmp/mysql_general.log'; SET global general_log = 1;\""
alias mysql-log-off="dc exec -it mysql mysql -u root -proot -e 'SET global general_log = 0;'"
alias mysql-log-tail="dc exec -it mysql tail -f /tmp/mysql_general.log"
