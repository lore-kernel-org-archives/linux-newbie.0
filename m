From: Ray Olszewski <ray@comarre.com>
Subject: Re: /net
Date: Tue, 29 Oct 2002 18:48:46 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021029184241.02100c70@celine>
References: <5.1.0.14.1.20021029171133.02101ec0@celine>
 <5.1.0.14.1.20021029171133.02101ec0@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1035944986.4514.12.camel@brainpress.verizon.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Bryan Simmons <bsimmo1@gl.umbc.edu>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

I can't help you too much, Bryan, but maybe just enough to let you move ahead.

This mount point is managed by amd (AutoMount Daemon), which I do not use. 
You might look through your init scripts to find the one that invokes it, 
then modify the script or disable it completely (depending on whether it 
does other things you still need done). Or maybe Mandrake's "services" 
configuration offers a way to control amd.

Beyond that ... you still need to use "lsof" to find out what process has 
something in that directory (or perhaps the directory itself) open to 
interfere with the umount command. Or the control file "/etc/amd.net" may 
contain illuminating information.

At 09:29 PM 10/29/02 -0500, Bryan Simmons wrote:
>Here is what /etc/mtab says about /net:
>
>brainpress:(pid1532) /net nfs
>intr,rw,port=1023,timeo=8,retrans=110,indirect,map
>=/etc/amd.net,dev=0000000b 0 0
>automount(pid1622) /net autofs rw,fd=5,pgrp=1622,minproto=2,maxproto=4 0
>0
>
>Here's what I know:  I'm running Mandrake 9.0 kernel 2.4.19-16mdk.  In
>the "services" configuration (which sets up what daemons and other
>services start at boot automatically etc...) I tried to stop netfs and
>nfslock by stopping them and changing their startup to "manual" instead
>of "on boot".  But it didn't take.  In the syslog logfile it says that
>amd was the last process to mount /net.  The only reason I installed
>these services is because I am planning on putting this machine on a
>home network with a WinXP box.  Could it be having problems because
>there is nothing to find in the /net folder?  Since it is not listed in
>/etc/fstab is there any way to get rid of it?




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
