#Set the MTU to 1500
sudo ifconfig eth0 mtu 1500

#Disable offloads
sudo ethtool -K eth0 tx off rx off tso off gso off gro off lro off

#Run the main script
python ./main.py -u ./etc/urls-100-10-mon.csv -e wang_and_goldberg
