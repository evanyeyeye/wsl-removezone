# WSL Remove Zone.Identifier Files

Support for removing Zone.Identifier files in Windows Subsystem for Linux (WSL). 

This repo offers 2 different methods.

## Method 1: Enable Local Group Policy

* Open the Local Group Policy Editor (`gpedit.msc`). 
* User Configuration > Admistrative Templates > Windows Components > Attachment Manager
* Enable the "Do not preserve zone information in file attachments" policy. 

This method will prevent Windows from marking downloads with a zone identifier. According to Microsoft, this may make your computer more "insecure", so we provide an alternative method to remove these files. 

## Method 2: Automated File Removal

For Windows 11 and Windows 10 Insider Build 21286+

* Clone the repository to your Linux home directory

```shell
git clone https://github.com/evanyeyeye/wsl-removezone.git ~/.wsl-removezone
```

* Add this `command` option under the `boot` section in  /etc/wsl.conf

```sudoers
[boot]
command="~/.wsl-removezone/removezone.sh"
```

* Create a 1-line start.bat file in your Windows startup directory (Win+R, shell:startup)

```
wsl ls /
```