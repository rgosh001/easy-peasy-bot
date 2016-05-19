#!/bin/bash
cd ..
cd ..
pwd

#myarr=($(ls -1 | awk '{ print $1}'))
#echo ${myarr[1]}
#
#for i in "${myarr[@]}"
#do
#   echo $i
#done

cd vm1
echo ""
echo "Checking Virtual Machine 1"
vagrant up
echo "Requesting System Information..."
vagrant ssh -c "sudo apt-get install sysstat -y"
echo "Virtual Machine 1" > /Users/rashidgoshtasbi/Desktop/vagrant/easy-peasy-bot/test.txt
echo "" >> /Users/rashidgoshtasbi/Desktop/vagrant/easy-peasy-bot/test.txt
echo "" >> /Users/rashidgoshtasbi/Desktop/vagrant/easy-peasy-bot/test.txt
echo "" >> /Users/rashidgoshtasbi/Desktop/vagrant/easy-peasy-bot/test.txt
vagrant ssh -c "iostat" >> /Users/rashidgoshtasbi/Desktop/vagrant/easy-peasy-bot/test.txt

cd ../vm2
echo ""
echo "Checking Virtual Machine 2"

vagrant up
echo "Requesting System Information..."
vagrant ssh -c "sudo apt-get install sysstat -y"
echo "Virtual Machine 2" >> /Users/rashidgoshtasbi/Desktop/vagrant/easy-peasy-bot/test.txt
echo "" >> /Users/rashidgoshtasbi/Desktop/vagrant/easy-peasy-bot/test.txt
vagrant ssh -c "iostat" >> /Users/rashidgoshtasbi/Desktop/vagrant/easy-peasy-bot/test.txt
