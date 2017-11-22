#!/bin/sh



echo "Enter the username"
read u_name
echo "Enter the name of the database"
read d_name
echo "1.Backup the database"
echo "2.Restore the database"
echo "Enter the option"
read option

case $option in
    1) echo "Enter the name of backup file"
           read b_file
           mysqldump -u $u_name -p $d_name > $b_file
        ;;
    2) echo "Enter the path of file to be restored"
           read restore_path
           mysql -u $u_name -p $d_name < $restore_path
        ;;
    *) echo "INVALID OPTION!" ;;

esac

