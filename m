From: Wladimir Foo <wfoo@linuxvoodoo.com>
Subject: Re: CD-ROM Hell
Date: Tue, 1 Oct 2002 02:38:22 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210010238.22882.wfoo@linuxvoodoo.com>
References: <1033443333.7225.50.camel@localhost.localdomain>
Reply-To: wfoo@linuxvoodoo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1033443333.7225.50.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Bryan Simmons <bsimmo1@gl.umbc.edu>, linux-newbie <linux-newbie@vger.kernel.org>

> I have two terrible CD-ROMs and a lot of shady CDs.  Sometimes I'll put
> one in the drive and Linux will fail to read it properly.  Sometimes
> this means I just can't read the disk.  Other times it means that the
> damn drive light stays on and the disk stays mounted and "busy" until I
> reboot the frickin PC.
>

As Ray mentioned earlier, it would be easier to come up with a possible remedy 
if we knew what you were doing. But, here's a something else that might help. 
Try using lsof:

lsof | grep /mnt/cdrom .

lsof will output the program(s) that is(are) using resources on /mnt/cdrom. 
Now simply quit (or kill those programs) and you should be able to unmount 
the cdrom drive.

-- 
http://www.linuxvoodoo.com     
perl -le '$_="75>42833<33.=3?,13406577073890:;90833<330690<3!!";tr[0-?][ 
YXOUIWLVETHDCNM];print'

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
