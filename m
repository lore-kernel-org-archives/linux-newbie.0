From: "K. Hollingsworth" <kris@aidm.com>
Subject: SAMBA Privileges using cupsaddsmb
Date: Wed, 14 Dec 2005 01:09:50 -0600
Message-ID: <439FC53D.9080801@aidm.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hey all, I've been banging my head against the wall for the last day or 
two trying to get this working. I'm trying to get my Ubuntu Linux 
(Breezy Badger 5.10 release) to serve up print drivers to my windows box 
when trying to share the printer attached to it.

I think I've got it almost there, I've just run into a problem with 
permissions on the smbclient commands in the cupsaddsmb.

I've only been using linux for about a week, so any help on this would 
help me out immensely.

/etc/samba/smb.conf
------------------------------------------
[global]
    load printers = yes
    printing = cups
    printcap name = cups

[printers]
    path = /var/spool/samba
    browseable = no
    public = yes
    guest ok = yes
    writable = no
    printable = yes
    printer admin = webster

[print$]
    path = /etc/samba/drivers
    browseable = yes
    guest ok = no
    read only = yes
------------------------------------------

I setup the samba user with:
------------------------
smbpasswd -a webster
------------------------

I used the command
--------------------
cupsaddsmb -a -v
--------------------

and the result was:
------------------------------------------------------------------------------------
Password for webster required to access localhost via SAMBA:
Running command: smbclient //localhost/print\$ -N -U'webster%[password]' 
-c 'mkdir W32X86;put /var/tmp/439fb7d81ff33 W32X86/PSC-1300.ppd;put 
/usr/share/cups/drivers/ps5ui.dll W32X86/ps5ui.dll;put 
/usr/share/cups/drivers/pscript.hlp W32X86/pscript.hlp;put 
/usr/share/cups/drivers/pscript.ntf W32X86/pscript.ntf;put 
/usr/share/cups/drivers/pscript5.dll W32X86/pscript5.dll'
Domain=[NARSHE] OS=[Unix] Server=[Samba 3.0.14a-Ubuntu]
NT_STATUS_NETWORK_ACCESS_DENIED making remote directory \W32X86
NT_STATUS_ACCESS_DENIED opening remote file \W32X86/PSC-1300.ppd
NT_STATUS_ACCESS_DENIED opening remote file \W32X86/ps5ui.dll
NT_STATUS_ACCESS_DENIED opening remote file \W32X86/pscript.hlp
NT_STATUS_ACCESS_DENIED opening remote file \W32X86/pscript.ntf
NT_STATUS_ACCESS_DENIED opening remote file \W32X86/pscript5.dll
------------------------------------------------------------------------------------

I can do:
------------------------------------
smbclient //localhost/print\$ -N -U'webster%[password]' -c
------------------------------------
and browse around, ls the file list, etc. I just can't don't have change 
access.

If anyone could help me with the NT_STATUS_ACCESS_DENIED errors, I would 
greatly appreciate it!

-Kris

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
