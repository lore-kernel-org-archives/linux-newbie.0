From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Unmounting a Zip 250 Drive??
Date: Fri, 14 Jun 2002 16:12:41 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02061416124100.00244@unix.pa3gcu>
References: <20020614104245.A481@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020614104245.A481@lnx2.w8mch.ampr.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Hal MacArgle <haltec@iceweb.net>, linux-newbie@vger.kernel.org

On Friday 14 June 2002 14:42, Hal MacArgle wrote:
> Greetings:  Having a problem trying to umount /dev/sda4 on the NFS
> server machine getting "device busy" report.. Was able to invoke
> umount with the -r flag changing to ro but still can't umount, to
> remove the disk, without rebooting the machine.. This internal ATAPI
> drive does not have the mechanical remove disk pin like the older
> drives.. Man umount hasn't offered a clue as well as several books
> and manuals I have..

I remember having a simalar problem a couple of years ago, i must say there 
was no NFS mounts anywhere on my machine tho' but i can explain what my 
problem was.
I had started a process when i was in the cdrom directory, no way could i 
unmount my cdrom, i was at that time stumped as to why this was, i looked 
high and low but i could find nothing wrong anywhere, if my memory serves me 
correctly i even asked Ray what he thought was the problem, in his 
explanation at that time he mentioned starting programs which go into the 
background when one is in the mount dir from a cdrom.
Ray hit the nail on the head, as soon as i read what he had written i 
rememberd just what i had done.
I know you say zip drive but i belive it is related.

>
> This only happens, AFAIK, when I use the drive to back up files from
> a NFS client machine.. I've made sure the client has unmounted it's
> end OK and /etc/mtab on both machines looks OK, with the server mtab
> changed from 'rw' to 'ro' of course, but still no joy..

If i read you correctly and there is an entry in /etc/mtab then something is 
using the device, or do i misinterpret what you write.?

I would check my logs to see if there is any hint of programs being started 
and also check 'dmesg' for messages about mounts/umounts.
Remember dmesg is usefull not only for checking things which were started at 
bootime but also in a running kernel.

>
> I can reboot the server solving the problem but there must be another
> way.. BTW, the iOmega supplied program, iomegaware, 'iw',  wont
> unmount it either. Something is 'open' somewhere that I can't seem to
> find. Any suggestions?? (Slackware8.0 w/ kernel 2.4.13 on the server
> machine and kernel 2.2.19 on the client.) TIA!!

Once again either a program has been started from the mount point and is 
still running, (i dont know if that is still a problem in todays kernels, 
have not checked) or some program thinks it needs the device.

'cat /proc/mounts'
is another way of double checking.
If its a running program which was started in the mount dir of the device one 
way to find that out in the /proc filesystem, check all the numberd 
directorys, ( the numbers are the process numbers shown by 'ps ax' cat the 
"enviroment file" from wach process and check to see what path(s) are stated.

Hope this helps.

>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
>     haltec@iceweb.net | w8mch@iceweb.net.. A M$ free environment

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
