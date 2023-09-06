sudo swapoff /mnt/swapfile       
#sudo rm -rf /imagegeneration/installers /opt/az /opt/hostedtoolcache /opt/microsoft /opt/pipx /opt/googles /mnt/swapfile 
sudo rm -rf /imagegeneration /opt /mnt/swapfile /usr/local/aws*  /usr/local/julia* /usr/share/swift* /usr/share/sbt* /usr/local/share/chromium*  /usr/local/share/powershell*

#sudo    du -sh /home/* /imagegeneration/* /opt/* /mnt/* /usr/share/miniconda*  /usr/share/dotnet* /usr/share/az* /usr/local/sqlpackage*  
sudo du -sh   /usr/local/share/*
df -hT

