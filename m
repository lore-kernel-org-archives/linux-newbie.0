From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Root filesystem is full!
Date: Mon, 5 Aug 2002 15:51:21 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02080515512105.02607@unix.pa3gcu>
References: <BAG2SMTP.12758.69.1943434.1711962929.RIMEGateQWK@MoonDog.BBS>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BAG2SMTP.12758.69.1943434.1711962929.RIMEGateQWK@MoonDog.BBS>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: RUSS JOHNSON <RimeGate@rime.org>, linux-newbie@vger.kernel.org

On Sunday 04 August 2002 16:54, RUSS JOHNSON wrote:
> *
>
> > The root filesystem which was about 90% full already is now
> > showing 100% full.  I haven't found any large new files to account for
> > this. However, I have deleted several megabytes of data and df shows the
> > used blocks going down however the available blocks still is at zero.

I seem to be missing mails here, i cant remember seeing this one at all.

However, i think if i explain the situation a little more about full disk's 
then one may see that it is not really nessacary to fsck the disk.

When an ext2 or 3 filesystem is created +/- 5% of disk space is resurved for 
the superuser, when and if the disk fills up like mine do quite often, one 
sees this behaviour of deleting files but no space appiers via 'df'.

Basicly the filesystem counts all diskspace as full untill root has his 5% 
back in an empty state.
This means that if a disk is 100Mb then root needs to delete at least 5MB 
before the command 'df' will show any changes in the percentage, it will only 
show changes like mentioned above.
That is the reason AFAIK why the "available" blocks stay zero untill the 
superusers 5% is again usable.

Files which grow quickly are log files in /var/log to mention but a few.

>
> You can fsck the root file system, but you'll need to put the system in
> single user mode first. If you run lilo, you can press [TAB] at the LILO
> prompt to see what your boot options are. Assuming your normal boot is
> called "linux", you would type "linux 1" at the lilo prompt to boot into
> single user mode. Alternatively, you can type "telinit 1" at a prompt on
> your running system to switch to runlevel 1 (also called single user mode).
>
> Once there, you remount the root filesystem as ro (read only). Use the
> mount command to do this.
>
> Once your root filesystem is read only, run fsck. If there are errors, you
> will need to fix them. This may require booting with a floppy so that you
> can have the root partition mounted read-write, but won't be using binaries
> off that same partition to run the system.
>
> Doing this CAN hose your system. Be very careful, and use this information
> at your own risk.
>
> Russ
>
> --- BBBS/LiI v4.01 Flag-4
>  * Origin: RelayNet(tm) DIMSTAR (#3071):http://www.dimstar.net
> (900:104/3071)
>
>
>
>
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
