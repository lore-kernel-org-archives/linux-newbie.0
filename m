From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: Unmounting a Zip 250 Drive??
Date: Sat, 15 Jun 2002 13:29:45 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020615132945.A863@lnx2.w8mch.ampr.org>
References: <20020614104245.A481@lnx2.w8mch.ampr.org> <02061416124100.00244@unix.pa3gcu>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <02061416124100.00244@unix.pa3gcu>; from pa3gcu@zeelandnet.nl on Fri, Jun 14, 2002 at 04:12:41PM +0000
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Richard Adams <pa3gcu@zeelandnet.nl>
Cc: linux-newbie@vger.kernel.org

On Fri, Jun 14, 2002 at 04:12:41PM +0000, Richard Adams wrote:
> On Friday 14 June 2002 14:42, Hal MacArgle wrote:
> > Greetings:  Having a problem trying to umount /dev/sda4 on the NFS
> > server machine getting "device busy" report.. Was able to invoke
> > umount with the -r flag changing to ro but still can't umount, to
> > remove the disk, without rebooting the machine.. This internal ATAPI
> > drive does not have the mechanical remove disk pin like the older
> > drives.. Man umount hasn't offered a clue as well as several books
> > and manuals I have..
> 
> I remember having a simalar problem a couple of years ago, i must say there 
> was no NFS mounts anywhere on my machine tho' but i can explain what my 
> problem was.
> I had started a process when i was in the cdrom directory, no way could i 
> unmount my cdrom, i was at that time stumped as to why this was, i looked 
> high and low but i could find nothing wrong anywhere, if my memory serves me 
> correctly i even asked Ray what he thought was the problem, in his 
> explanation at that time he mentioned starting programs which go into the 
> background when one is in the mount dir from a cdrom.
> Ray hit the nail on the head, as soon as i read what he had written i 
> rememberd just what i had done.
> I know you say zip drive but i belive it is related.
		I'm still stuck even learning many of the ps flags
including the one that lists processes in the background.. No
children or background running and still can't umount /zip or
/dev/sda4, the Zip drive..

> >
> > This only happens, AFAIK, when I use the drive to back up files from
> > a NFS client machine.. I've made sure the client has unmounted it's
> > end OK and /etc/mtab on both machines looks OK, with the server mtab
> > changed from 'rw' to 'ro' of course, but still no joy..
> 
> If i read you correctly and there is an entry in /etc/mtab then something is 
> using the device, or do i misinterpret what you write.?
		Invoking 'mount' - 'cat /proc/mounts' - or looking at
mtab lists the drive mounted and normal reports so "something" is
using it. The problem is WHAT... Not knowing any better it almost
seems like the ethernet card is causing this. But how to "reset" the
ethernet card?? How to make the ethernet card tell the system that
the client is "finished." Wish I knew what I was doing... :^)...

> 
> I would check my logs to see if there is any hint of programs being started 
> and also check 'dmesg' for messages about mounts/umounts.
> Remember dmesg is usefull not only for checking things which were started at 
> bootime but also in a running kernel.
		Been looking at 'dmesg' and it reports, correctly?,
SCSI host adapter emulation and that the scsi device, Zip250, is
attached at channel 0, id 0, lun 0.. No clue otherwise.. All the
various trys with the ps flags shows nothing "extra".. I could kill
all the nfsd and rpc processes, something like 15 or more, but that
wouldn't make sense if this machine was being used by several
clients. (The nfsd install defaults to 8 clients per the original SUN
lashup.)

> >
> > I can reboot the server solving the problem but there must be another
> > way.. BTW, the iOmega supplied program, iomegaware, 'iw',  wont
> > unmount it either. Something is 'open' somewhere that I can't seem to
> > find. Any suggestions?? (Slackware8.0 w/ kernel 2.4.13 on the server
> > machine and kernel 2.2.19 on the client.) TIA!!
> 
> Once again either a program has been started from the mount point and is 
> still running, (i dont know if that is still a problem in todays kernels, 
> have not checked) or some program thinks it needs the device.
		 Again - WHAT program?? Ugh..

> If its a running program which was started in the mount dir of the device one 
> way to find that out in the /proc filesystem, check all the numberd 
> directorys, ( the numbers are the process numbers shown by 'ps ax' cat the 
> "enviroment file" from wach process and check to see what path(s) are stated.
		Not sure I understand this.. Invoking 'export' lists
the paths and environment. I see nothing changed there that I know
about..

	The more I read about NFS the more I see, "reboot the
computer," mentioned.. This can't be, IMHO. (Or can it?) <grin>


> >     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
> >     haltec@iceweb.net | w8mch@iceweb.net.. A M$ free environment
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
