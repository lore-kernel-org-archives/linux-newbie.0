From: Ray Olszewski <ray@comarre.com>
Subject: Re: samba -> some problems
Date: Sat, 18 Jan 2003 08:41:00 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030118082742.021b73c0@celine>
References: <3E294388.7050707@rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E294388.7050707@rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: kurt.sys@rug.ac.be, Linux Newbie <linux-newbie@vger.kernel.org>

I am new to running Samba too, so these comments may be a bit off the mark. 
Also, I use Debian SId, while I'm guessing you use Woody, so our app 
versions will differ a bit. With those warnings ...

1. Needing to be root to mount filesystems is the default behavior of 
"mount". Entries in /etc/fstab can change this to permit non-root users to 
mount particular filesystems (removable ones like floppy and cdrom are 
natural candidates for this treatment). Without knowing more about your 
setup, I cannot say for sure why you can mount some things as an ordinary 
user but not others. Read the man page for "fstab" to learn more about 
this, and then look over your "/etc/fstab" file.

2. The normal syntax of smbmount (which is what "mount -t smbfs" calls) is

         smbmount service location -o options

Your problem is with the "service" part. It needs to take the form
         //servername/servicename

where service name is a directory (for filesystem mounts) or a printer name 
(for printer connections ... but you don't use the smbmount command for 
printers - see next item). So the result you are getting looks right to me, 
and it is consistent with the behavior of Windows own file sharing 
interface (where you first click on a server icon, then a file-folder 
icon). See the man page for "smbclient" for more explanation of this format.

3. The only way I know of to connect to SMB-shared printers (and I haven't 
actually tried it here) is by using "smbclient" (a separate Debian 
package). This app can also give you a listing of the available shares 
("smbclient -L servername").

4. The error message you are getting with the *successful* smbmount is 
unclear to me too. How is the relevant share offered (does it require a 
password, or is it public)?

At 01:07 PM 1/18/03 +0100, Kurt Sys wrote:
>Hello,
>
>I'm running Debian (kernel 2.4.16) now for some time, but I don't manage 
>to configure samba (2.2.3a) like it should (I guess). I'll try to explain 
>as good as possible what my problems are...
>I want to get on a Windows NT intranetserver, to access some data but 
>especially for the printers on the network. I have put in /etc/hosts the 
>following line:
>
># 157.193.64.19         lmeserv.rug.ac.be       labmetserver
>
>This works, since i can ping to 'labmetserver'.
>
>Next, I'd like to connect to the server, so I do:
>
># mount -t smbfs //labmetserver/ /mnt/labmet/ -o 
>username=kurts/LMEDOM%xxxxxxxxxxxx
>
>(xxxxxxxxx to replace by password) and next message appaers:
>
># mount: only root can do that
>
>I don't understand this, since I can mount other filesystems (floppy, 
>cdrom, zip, etc), so I actually can mount, but anyway, I go on:
>
># su root
># passwd:
># mount -t smbfs //labmetserver/ /mnt/labmet/ -o 
>username=kurts/LMEDOM%xxxxxxxxxxxx
>
># 1214: session request to LABMETSERVER failed (Called name not present)
># 1214: tree connect failed: ERRDOS - ERRnosuchshare (You specified an 
>invalid share name)
># SMB connection failed
>
>
>So apparently, I cannot connect to the server. But now, I can try 
>something else:
>
># mount -t smbfs //labmetserver/information /mnt/labmet/information -o 
>username=kurts/LMEDOM%xxxxxxxxxxxx
>
>and this seems to work to some extend: the filesystem is mounted (so I can 
>read the 'information' directory of the server), but I receive a message 
>again (same as the first one above):
>
># 1222: session request to LABMETSERVER failed (Called name not present)
>
>At this point, I'm already 'satisfied' that I can read the data, but I'm 
>not able to find the printer yet since I cannot mount the complete 
>filesystem properly (that's at least what I think...) I guess, I have to 
>be able to mount the server (smb) filesystem, before I try to print!?
>
>Anyway, I already tried some things with smbpasswd but I can't remember 
>exactly what I did. Anyway, here's some more information for you :-):
>as 'kurt', I run:
>
># smbpasswd -U kurts
>(since kurts is my login name of the server)
># Old SMB password:
># New SMB password:
># Retype new SMB password:
># machine 127.0.0.1 rejected the password: error was : RAP86: the 
>specified password is invalid.
># Failed to change password for kurts
>
>
>Finally, my smb.conf:
>
>[global]
>
>         workgroup=LMEDOM
>         ecrypt password=True
>         security = domain
>         password server = *
>
>
>
>I would like to be able to mount the filesystems when I'm not logged in as 
>root (fakeroot doesn't help...), but I really would like to be able to 
>mount the server filesystem (with printers etc). This is probably the last 
>'necessary' thing that has to be solved to go completely for Linux.



--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
