# WSL Remove Zone.Identifier Files

Support for removing Zone.Identifier files in Windows Subsystem for Linux (WSL). 

This repo offers 2 different methods.

## Method 1: Enable Local Group Policy

* Open the Local Group Policy Editor (`gpedit.msc`). 
* User Configuration > Admistrative Templates > Windows Components > Attachment Manager
* Enable the "Do not preserve zone information in file attachments" policy. 

This method will prevent Windows from marking downloads with a zone identifier. According to Microsoft, this may make your computer more "insecure", so we provide an alternative method to remove these files. 
