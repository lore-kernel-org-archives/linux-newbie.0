From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: samba -> some problems
Date: Sat, 18 Jan 2003 13:07:36 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E294388.7050707@rug.ac.be>
Reply-To: kurt.sys@rug.ac.be
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello,

I'm running Debian (kernel 2.4.16) now for some time, but I don't manage 
to configure samba (2.2.3a) like it should (I guess). I'll try to 
explain as good as possible what my problems are...
I want to get on a Windows NT intranetserver, to access some data but 
especially for the printers on the network. I have put in /etc/hosts the 
following line:

# 157.193.64.19		lmeserv.rug.ac.be	labmetserver

This works, since i can ping to 'labmetserver'.

Next, I'd like to connect to the server, so I do:

# mount -t smbfs //labmetserver/ /mnt/labmet/ -o 
username=kurts/LMEDOM%xxxxxxxxxxxx

(xxxxxxxxx to replace by password) and next message appaers:

# mount: only root can do that

I don't understand this, since I can mount other filesystems (floppy, 
cdrom, zip, etc), so I actually can mount, but anyway, I go on:

# su root
# passwd:
# mount -t smbfs //labmetserver/ /mnt/labmet/ -o 
username=kurts/LMEDOM%xxxxxxxxxxxx

# 1214: session request to LABMETSERVER failed (Called name not present)
# 1214: tree connect failed: ERRDOS - ERRnosuchshare (You specified an 
invalid share name)
# SMB connection failed


So apparently, I cannot connect to the server. But now, I can try 
something else:

# mount -t smbfs //labmetserver/information /mnt/labmet/information -o 
username=kurts/LMEDOM%xxxxxxxxxxxx

and this seems to work to some extend: the filesystem is mounted (so I 
can read the 'information' directory of the server), but I receive a 
message again (same as the first one above):

# 1222: session request to LABMETSERVER failed (Called name not present)

At this point, I'm already 'satisfied' that I can read the data, but I'm 
not able to find the printer yet since I cannot mount the complete 
filesystem properly (that's at least what I think...) I guess, I have to 
be able to mount the server (smb) filesystem, before I try to print!?

Anyway, I already tried some things with smbpasswd but I can't remember 
exactly what I did. Anyway, here's some more information for you :-):
as 'kurt', I run:

# smbpasswd -U kurts
(since kurts is my login name of the server)
# Old SMB password:
# New SMB password:
# Retype new SMB password:
# machine 127.0.0.1 rejected the password: error was : RAP86: the 
specified password is invalid.
# Failed to change password for kurts


Finally, my smb.conf:

[global]

	workgroup=LMEDOM
	ecrypt password=True
	security = domain
	password server = *



I would like to be able to mount the filesystems when I'm not logged in 
as root (fakeroot doesn't help...), but I really would like to be able 
to mount the server filesystem (with printers etc). This is probably the 
last 'necessary' thing that has to be solved to go completely for Linux.



I really would appreciate any help,
tnx,
Kurt.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
