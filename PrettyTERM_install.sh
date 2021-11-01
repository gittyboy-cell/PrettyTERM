#!/bin/bash
# making file for scripts
echo "making file.."
cd 
mkdir PrettYTERM
cd PrettyTERM
touch PrettyTERM.sh
# installing dependencies
echo "installing dependencies,please wait..."

apt -y update && apt -y install neofetch lolcat ruby

# copying lolcat away from /usr/games to fix PATH problem
echo "fixing problems,please wait.."
cp -r -f /usr/games/lolcat $PATH
cp -r -f /usr/games/lolcat $PATH


# working with the config file
echo "making main file,please wait..."
cd $HOME/PrettYTERM
echo 'clear' >> PrettyTERM.sh
echo '#!/bin/bash' >> PrettyTERM.sh
echo 'neofetch' >> PrettyTERM.sh
echo 'date | lolcat' >> prettytermconfig.sh
echo '# if you want to add your own text,add them below and delete the <text here>' >> PrettyTERM.sh
echo 'lolcat <text here>' >> PrettyTERM.sh

echo "all done!"
echo "if you want to add your own text,then follow the instructions after this"
echo "if you do not want to modify or add your text press Ctrl-X without saving changes"

echo "press any key to continue..."
read VARanykey
if [ VARanykey = 'a' ]; then
  nano PrettyTERM.sh
else 
nano PrettyTERM.sh
fi

# EOF
