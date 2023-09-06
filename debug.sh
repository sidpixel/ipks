sudo swapoff /mnt/swapfile       
sudo rm -rf /imagegeneration/installers /opt/az /opt/hostedtoolcache /opt/microsoft /opt/pipx /mnt/swapfile
sudo    du -sh /home/* /imagegeneration/* /opt/* /mnt/*
df -hT

