From: Ray Olszewski <ray@comarre.com>
Subject: RE: Mounting Linux drive on Linux: error 21874
Date: Fri, 18 Feb 2005 16:59:54 -0800
Message-ID: <5.1.0.14.1.20050218163553.0ba41da0@celine>
References: <5.1.0.14.1.20050218150639.01ff9e28@celine> <005301c51611$f6e16970$1f0aa8c0@lanadmin>
Mime-Version: 1.0
In-Reply-To: <005301c51611$f6e16970$1f0aa8c0@lanadmin>
References: <5.1.0.14.1.20050218150639.01ff9e28@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: eatley@wowcorp.com, linux-newbie@vger.kernel.org

At 06:31 PM 2/18/2005 -0500, Eve Atley wrote:

>Hello again and thanks,
>
>Trying this one:
>mount -t smbfs -o
>username=someusername,password=somepassword,workgroup=workgroup
>//192.168.10.28/dev/hda3 /mnt/devbox
>(perhaps this is incorrect syntax?)

I'm not really up to date on this, but I fiddled around here and got these 
to almost work (password deleted here, of course):

kuryakin:/home/autovcr# mount -t smbfs -o username=ray,password=********
//waverly/shared_video /mnt

kuryakin:/home/autovcr# mount -t smbfs -o username=ray,password=******** 
//192.168.1.1/shared_video /mnt

The "almost" is because the kernel on kuryakin isn't set up to support 
smbfs filesystems ... but both smbmount and the SMB server on waverly seem 
to like this syntax). And it does seem to indicate that this syntax will 
take an IP address, which was what I actually wanted to confirm.

So, compared to mine ... the workgroup= piece seems unneeded, and you need 
to specify the name of the share the way it appears in your smb.conf file, 
not the /dev entry for the filesystem ... but the next thing you write 
suggests you have a different problem.

>And getting this:
>Error connecting to 192.168.10.28 (No route to host)
>23617: Connection to 192.168.10.28 failed
>SMB connection failed
>
>There *should* be a route to host, since I can SSH into the box. :)

Nothing to do here but check the routing table, right? netstat -nr is one way.

>  'uname
>-a' does indeed show the hostname as 'localhost'. The /etc/hosts file shows
>the standard 127.0.0.1 localhost entry. And as the 'unofficial' sysadmin,
>I'm sure of the system's username/password. So, I'm going out on a limb here
>and guessing that maybe I should change the hostname so that uname reports
>something other than localhost.
>
>If that's a good guess, what's the best way to go about it?

This is most likely irrelevant to your problem ... but this hostname is 
just the contents of the file /etc/hostname . Whether you want to edit that 
directly or change some script that writes a value here is distro specific, 
sometimes even installation specific. Try editing the file by hand and see 
if the change survives a reboot; if it doesn't, hunt for the init script 
that writes to this file.

>My only other guess is that Samba is not configured on 192.168.10.28...

Even the "'unofficial' sysadmin" shouldn't have to guess about that. Tsk tsk.

In the output of "ps ax" on the server (192.168.10.28), you want to see 
something like --

         16498 ?        Ss     2:29 /usr/sbin/nmbd -D
         16500 ?        Ss     0:00 /usr/sbin/smbd -D
         16501 ?        S      0:00 /usr/sbin/smbd -D

And you want a config files that specifies the share; I'm not sure how 
standard to config-file location is, but my Debian systems default to 
putting it in /etc/samba/smb.conf . You want in it stanzas that look 
something like this (this is an on-LAN public share, so a bit different 
from what you want):

         [shared_files]
         writable = yes
         locking = no
         path = /home/shared_files
         public = yes

(This example is for a share that Windows systems connect to here all the 
time. I never bothered to set up Linux access via SMB, since I still use 
NFS for that.)

There is a lot more detail to setting up the SMB service than I've covered 
here. If you get closer and have specific questions, please don'thesitate 
to post again ... but right now, I don't know what specific problems you 
might have aside from what your message identified, so I'll defer anything 
more.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
