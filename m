From: Ray Olszewski <ray@comarre.com>
Subject: Re: /net
Date: Tue, 29 Oct 2002 17:32:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021029171133.02101ec0@celine>
References: <1035937437.2765.5.camel@brainpress.verizon.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035937437.2765.5.camel@brainpress.verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

It's hard to be sure from a fragmentary report, but the "something about 
RPC not being found" probably refers to the portmapper daemon (which runs 
as /sbin/portmap on my systems) that is used by mountd . Is it running 
prior to the the start of the halt or reboot process? And you need to tell 
us what is mounted as /net (look in /etc/fstab to find out, if you don't 
know, or look at the output of "df").

Usually, a "device busy" error from umount means that some active process 
is using the partition that umount is trying to unmount. Without more 
detail, I don't know what that might be at this point in the halt or reboot 
sequence. You might check this with "lsof" just before you halt or reboot. 
Indeed, you might even try umount'ing /net by hand, to track down the 
source of the conflict.

As to "what else is important", it never hurts to mention what Linux distro 
and version is involved (even if it seems like you are repeating yourself 
again and again; there's enough traffic on help lists to make it tough for 
me, and probably others, to remember the configurations others have). Also, 
*how* you "tried" to disable nfslock and nfs.

Also ... "The only thing I can do is hit the reset button" ... you are 
probably right, but did you try CTRL-C? It probably won't work right at 
this spot, but it might ... the shutdown process really is just "init" 
running a bunch of scripts, and you can sometimes SIGTERM out of them.

At 07:23 PM 10/29/02 -0500, Bryan Simmons wrote:
>I'm still recovering from upgrading into almost a completely new
>system.  I thought I didn't install NFS and samba and the other network
>file system stuff, but it seems it's there anyway.
>
>Anyway, when the system is shutting down or rebooting,  just after the
>umount command is given, I get the error: umount2: <something about RPC
>not being found>: umount /net: device busy
>and right there, all attempts to shutdown/reboot are ended.  The system
>just sits there.  The only thing I can do is hit the reset button.  If
>not for XFS, I'd be running fsck at every frickin reboot.
>
>I have an AthlonXP 2100+ system, integrated ethernet, adsl connex
>(started at boot and not stopped manually at all).  Can't think of what
>else is important here.  Can anyone tell me how to make this go away?
>I tried to disable nfslock and nfs at boot (set to start manually), but
>it frickin started anyway.




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
