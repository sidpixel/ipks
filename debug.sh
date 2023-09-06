sudo swapoff /mnt/swapfile       
#sudo rm -rf /imagegeneration/installers /opt/az /opt/hostedtoolcache /opt/microsoft /opt/pipx /opt/googles /mnt/swapfile 
sudo rm -rf /imagegeneration /opt /mnt/swapfile 

#sudo    du -sh /home/* /imagegeneration/* /opt/* /mnt/*
sudo du -sh   /usr/local/* /usr/share/*
df -hT

