From: Frank Roberts - SOTL <sotl155360@earthlink.net>
Subject: Re: No Boot Problem
Date: Fri, 26 Jul 2002 08:44:33 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207260844.34055.sotl155360@earthlink.net>
References: <3D406BBB.E208E07B@gelm.net> <5.1.0.14.1.20020725203925.022778d0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020725203925.022778d0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

On Thursday 25 July 2002 23:53, Ray Olszewski wrote:
> As you can see below, your message came to the list in soewhat garbled form
> -- with sentence fragments and bits that look like they are out of place.
> So please forgive me if I have misinterpreted what you (intended to) say.

Thanks for trying to read this mess. It appears that 2 words were added in 
front of my posting and what is disturbing to me it was in my box or more 
probable my failure to clear my original scripting of the posting. 

I have correcte the posting to the original meaning.
>
> At 09:38 PM 7/25/02 -0400, Frank Roberts - SOTL wrote:
> >I hope you nice people can explain to me how to get out
> > of this situation.
> >
> >I have a dual boot box - MS Windows 98 on hda and Linux RH6.3 on hdb.
> >
> >Having problems with the Windows side (nothing new here) I decided to
> > remove both hda and hdb and install a third hard drive (hd3) and the use
> > the original restore disk to install windows on hd3.
> >
> >First I had problems getting the restore disk to be acknowledged but on
> > about the 4th boot attempt I .
> >
> >The first screen up said that the disk drive was unreadable and that i
> > would have to use FDisk to remove all partions. This I did and then
> > rebooted the box.
> >
> >The box then refused to boot.
>
> If I understand you correctly, up to this point, all your problems are with
> Windows, not with Linux.

Yes

> >I then restored the box to its original configuration by reinstalling hda
> > and hdb and removing hd3. The systen still refused to boot.

> At this point, a description of the failure mode would belp more than
> "refused to boot".  Did LILO even begin to run?

No

> Did it display any messages on teh screen?

This is going to take several boot and I dought that I get all the info 
completely correct. It simply goes by on the screen too fast.

1. CPU=Celeron 300 MHz
2. RAM is checked                  Passed
3. Extended RAM is checked  Passed
4. System BIOS Shadowed
5. Vidio BIOS Shadowed
6. Upper limit segmant address = F299 
7. Fixed Disk 0: TD@ @06400L
8. Fixed Disk 1: WDC AC310200R
9. ATAPI CD-ROM: CDR-8240B
10. ATAPI CD-ROM: SONY CD-RW CRX175E2
11. System Configuration Data Updated
12. Blinking Currersor

> >I stuck Tomsrtd in and boot the box into Toms followed by a normal shut
> > down.
> >
> >I then stuck RH 7.3 install in and started an upgrade to see what would
> >happen. The box finally booted into RH after 5 or 6 tries.
>
> This sounds more and more like a hardware failure, perhaps a mobo problem.
> The system as you described it has now had problems with a Windows boot
> floppy, some hard disk bootloader (I surmise lilo), and syslinux (I believe
> RH boot floppies use syslinux).

Don't see that personally. The two normal systems HD were out of the system 
with the third HD in the system and the system will boot and load from the 
floppie and CD-Read after system restoration.

> >I shut the upgrade down before the box upgrades keeping the original
> >configuration - hopefully.
> >
> >Next I attempted an install of RH to see what the  table looked liked.
> > Here I received an error message that the partition table for hda the MS
> > Windows side was not readable. At that point I shut the box down keeping
> > the original configuration hopefully.
> >
> >I again tried to boot the box normally. No Go.
> >
> >Hopefully somebody has some ideas in how to boot this box.
>
> Boot it into what? You say it booted with Tomsrtbt. It's been awhile since
> I used that, but doesn't it include a kernel with ide support and tools
> like (Linux) fdisk? What do those tools tell you about the disks and their
> partitions?

My Knowledge of TOMS is very limited. The only thing this proved to me was 
that I could boot the box into a system on a floppie. Thus the motherboard is 
working, same for booting from the CD-Read.

> The difficulties you describe simply do not sound like Linux problems;
> instead, they sound like hardware problems of some sort. 

Not certain of a lot associated with computers but I do not believe that this 
system is reaching Lilo.

> A more complete
> report of the details of the various failures (especially the LILO failure)
> and a description of the underlying hardware, might elicit more helpful
> responses.

Thanks again for your help.

Frank


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
