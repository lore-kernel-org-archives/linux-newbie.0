From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: cannot access windows share via smbclient
Date: Tue, 19 Sep 2006 15:44:21 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0609191513080.12363-100000@treebeard.engin.umich.edu>
References: <Pine.LNX.4.44.0609121622550.25643-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0609121622550.25643-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I recently upgraded to Ubuntu 6.06 LTS, installed smbfs and smbclient 
(3.0.22-1ubuntu3.1) and run the 2.6.15-26 kernel. I am unable to access a 
windows share that acts as the central data-backup machine for our lab 
here. 

I attempt to access the windows share from the linux box via: 
$ smbclient -Ukarthikv -I192.168.0.100 //192.168.0.100/NimmiLabBackup
Password: 
Domain=[NR-BACKUP] OS=[Windows 5.1] Server=[Windows 2000 LAN Manager]

I am able to login with my password and get the smb:\> prompt. However, 
there, most commands fail: 

smb: \> ls
NT_STATUS_ACCESS_DENIED listing \*
59189 blocks of size 8388608. 51869 blocks available

smb: \> pwd
Current directory is \\152.3.194.117\NimmiLabBackup\
smb: \> cd Shared
smb: \Shared\> pwd
Current directory is \\152.3.194.117\NimmiLabBackup\Shared\
smb: \Shared\> cd Shared
cd \Shared\Shared\: NT_STATUS_OBJECT_NAME_NOT_FOUND

Which seems logical since there is a folder called Shared (within the 
shared folder NimmiLabBackup on the windows machine). 

smb: \Shared\> listconnect 
0:      server=152.3.194.117, share=NimmiLabBackup
smb: \Shared\> showconnect 
//152.3.194.117/NimmiLabBackup

smbclient seems to fail with the following error if I provide the 
incorrect password. 

$ smbclient -Ukarthikv -I192.168.0.100 //192.168.0.100/NimmiLabBackup
Password:
session setup failed: NT_STATUS_LOGON_FAILURE

This seems to tell me that I am able to log into the windows share, but 
do not have permissions there to view files? Is this a problem with my 
local linux box, or the windows server? All responses are highly 
appreciated.


Thanks,

-K


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
