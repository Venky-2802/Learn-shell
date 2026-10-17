user_id=$(id -u)
logs_folder="/var/log/shell-practice"
logs_file="${logs_folder}/${0}.log"

if  [ $user_id -ne 0 ]; then 
   echo "please run this script with sudo access.."
   exit 1
fi

mkdir -p $logs_folder

echo "script started excution at $(date +"%F %T")" &>> $logs_file

validate(){
    if [ $1 -ne 0 ];then
        echo "${2}..FAILED"  | tee -a $logs_file
        exit1
    else 
        echo "${2}..SUCCESS"  | tee -a $logs_file
    fi
}


dnf install nginx -y &>> $logs_file
validate $? "Nginx installation"

dnf install mysql -y &>> $logs_file
validate $? "mysql installation"

echo "still proceeded..."

echo "script excution completion at $(date +"%F %T")"  &>> $logs_file

