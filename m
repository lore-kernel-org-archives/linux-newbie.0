From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Slackware 8.1.01 Install????
Date: Wed, 4 Jun 2003 21:01:56 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306042101.56986.pa3gcu@zeelandnet.nl>
References: <20030529165407.A446@lnx2.w8mch.ampr.org> <200305312214.21667.pa3gcu@zeelandnet.nl> <20030603164428.A161@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030603164428.A161@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com
Cc: linux-newbie@vger.kernel.org

On Tuesday 03 June 2003 22:44, Hal MacArgle wrote:
> Greetings again Richard and I've found something that I'm hoping is
> --IT--....

Firstly, i cant remember if we started this as a personal matter, however i 
have CC'ed this to the linux-newbie list, i saw some other mails with the 
same header so i am sure i am doing the correct thing.

>
> My mind is like Jello after an afternoon with this so forgive me if I
> say something really stupid:
>
> I bought another IDE drive and fitted it to yet another machine..
> Using Slack 8.0, 2.4.5 bare.i bootdisk and color.gz all seemed well
> as the CD was found; partitions setup, etc.. Selected "a" only, menu
> mode and then got the dreaded screen again "Your source device cannot
> be accessed properly."
>
> This time however I RTFM the rest of what it said. Dumbo me, before.
> It said to be sure the Slackware distribution  is mounted on
> /var/log/mount/slakware... Of course the drive was mounted properly
> BUT the CD I have has the packages in the directory slackware. After

Something wrong here, my slackware-8.1 cdrom obtained from a mirror site of 
slackware.com so its a slackware disk period.

I booted my machine a 650Mhz PIII machine with slack 8.0 bare.i and color.gz 
disks, please NOTE, slack 8.0 boot disks.
After doing the normal thing, fdisk(ing) typing 'setup' i get the dialog 
install program just like one expects.

I can then add swap, choose a partition to install on and let setup 
'automaticly' mount my cdrom located on /dev/hdc.
It gets mounted in /var/log/mount "thats it" no slackware directory to be 
seen, AFAIK its always been that way.

> all these years Patrick has decided to change the "normal" directory?
> /Or/ perhaps when the distribution was made this happened somewhere
> along the line. Dunno..

Not as far as i know he has'nt. At least not as far as 8.1, however i cant 
comment on slack 9 as i did not install from an iso image i installed from 
HD, i simply ftp'ed the directory's a thro' y .

>
> I, actually, noted this all along but never gave it a 2nd thought..
>
> The problem now is: How in the hell can I go round this??

What i ask is the following, if you mount the CD on another running linux 
machine, what is the dir structrue after the mount point, you should see;
"slackware" period, in otherwords if you mount the cdrom under /mnt you should 
see;
/mnt/(a lot of files and directorys) and one called slackware contianing dir's
a, ap, d, e, so on and so forth.

Another quiestion is what happens if you give a path to "setup" and mount the 
cdrom manually. ??

>
> Not having the actual CD I have in my possession no one could have
> possibly known about this except ME...
>
> Do I have to copy all the files from that CD directory to the HD in
> the 'slakware' directory and then install from there?? Maybe this is
> what you were talking about before.. I'm getting too old methinks.
> At least I'm sure learning more and more.
 You certainly can do that yes, there is only the need for the contens of the 
slackware directory to be copied to the HD no need for all the help readm's 
and so on in the topdir of the cdrom.

If all esle fails i could even send you a copy of my cdrom per POST, but i 
dont really think that is nessasary at all, i have a small inclination you 
are doing something fundementally wrong.

> Tomorrows another day, eh? Vy 73,
>
>     Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.18)
>                 Proprietary  Formats  Unacceptable
> .

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
