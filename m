From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: Using large drives on old computers under Linux.
Date: Wed, 02 Oct 2002 20:12:31 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D9B8B6F.DAF1A50F@gelm.net>
References: <3F06C9859CA7D31194ED0000D1ECC4AB14C48B12@pkcexv007.sprintspectrum.com> <3D8BC55E.77DE0541@gelm.net> <3D95F3C0.558B3146@worldnet.att.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Richard Dawson <rcdawson@worldnet.att.net>, "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Hi, Richard:

 I used the manufacturer's (Maxtor) partitioning software MaxBlast.
It auto-magically created four (4) 2.1 gigabyte partitions for 
[MS,PC]DOS and left the rest unpartitioned.  It asked for a DOS
system disk and I gave it one.  DOS then recognized the four (4)
partitions.

 I then booted with Slackware v8.0 bootdisk and rootdisk and
did a nfs install from a server on my LAN.  Linux recognized
the four (4) DOS partitions and the rest 32 gigabyte of drivespace.

 I used linux fdisk and removed partitions 2, 3, & 4 and created
one 38 gigabyte /dev/hda3, one swap partition /dev/hda2,
 and edited /hdev/hda1 to be type 83.

 Probably, /dev/hda1 must be no larger than 2.1 gigabytes so that
MaxBlast and system BIOS are happy when booting.

HTH, Chuck

Richard Dawson wrote:
> 
> Cuck Gelm's response re using a Linux boxe as an internet server/router/firewall
> mentioned that he used and 80486dx33 with 32 Meg of RAM, and a new 40 Gig hard
> disk.
> 
> My question:  how does one get an old machine running Linux, a machine whose
> BIOS presumably is limited to much less that 40 Gig,  to recognize a 40 Gig hard
> drive?
> 
> Chuck Gelm wrote:
> 
> > Hi, Le, Paul:
> >
> >  I used an old 80586-120 cyrix system to share my dialup ISP service
> > with several workstations, linux, WFW3.11, Win95, Win98.  It
> > also functioned as a firewall.  I used applications that came
> > with my distribution (pppsetup) and set it up like the HowTo
> > IP-Masquerade. (And quite a bit of help here in this list ;-)
> >
> >  I now have an aDSL ISP account and use 'Roaring Penguin'.
> > It is also capable of being a firewall.
> > OBTW, the 'new' internet connection sharing - firewall - router
> > is an old 80486dx33, 32 Meg of RAM, and a new 40 Gig hard disk.
> > The computer was USD$5 and had a 3c509 in it. I added another
> > 3c509 ($2) and the hard drive ($60) and a keyboard ($4), so
> > I only have $71 invested in it!
> > :-)
> > HTH, Chuck
> >
> > I used and use now ipchains.
> >
> > "Le, Paul [Contractor]" wrote:
> > >
> > > I am sorry kind of jump in the middle here. I am looking for a software so
> > > more than one computers in my LAN can share a same internet connection. Is
> > > Squid doing this???
> > >
> > > Thanks,
> > >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
