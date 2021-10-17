## **Requirements**

- ipmitool
- MegaCLI (if a MegaRAID-based controller is in use)
- smartmontools (if MegaCLI is unavailable or no MegaRAID-based controller in use)
- lm-sensors
- coretemp kernel module


### **IPMITool**
``` bash 
apt install ipmitool
```

### **MegaCli**

Install necessary tools
``` bash
apt-get install unzip
apt-get install alien
```
Install necessary lib
``` bash
apt install libncurses5
```
Download
``` bash
wget https://docs.broadcom.com/docs-and-downloads/raid-controllers/raid-controllers-common-files/8-07-14_MegaCLI.zip
```
Unzip
``` bash
unzip 8-07-14_MegaCLI.zip
```
Create debian package
``` bash
cd Linux
alien MegaCli-8.07.14-1.noarch.rpm
```
Install debian package
``` bash
dpkg -i megacli_8.07.14-2_all.deb
```
run MegaCli
``` bash
/opt/MegaRAID/MegaCli/MegaCli64 -h
```

###  **LM-Sensors Install**
``` bash
apt install lm-sensors
```

