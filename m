From: LL Phillips <lilo.phillips@sympatico.ca>
Subject: Re: Sharing drives.
Date: Thu, 03 Oct 2002 10:09:47 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D9C4FAB.8CAD330F@sympatico.ca>
References: <000501c269e8$b8ca73c0$af33f7c2@gcb> <3D9AE71D.D509316F@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: chuck gelm <nc8q@gelm.net>
Cc: geoff <geoff@gcbagley.uklinux.net>, linux-newbie@vger.kernel.org

Regarding the statement "Each would need a separate partition, AFAIK"
I've recently considered dual booting my W98SE hard drive which is 40G
total size with only 20G used made up of C: primary partition and
D,E,F,G,H all logical drives in one extended partition (each around
3-6G each)  

When I put in my W98SE boot disk to make a second PRIMARY partition I
was not allowed because fdisk told me there was already a primary
partition existing.

If I wanted to have W98SE, Debian and Peanut Linux all on the same
drive how would I go about that. Was I wrong to put in the W98SE boot
/ rescue disk.  Lindows (I'm an insider
/pre-general-release-by-subscription user) will install beside windows
if one has space on the drive, (it is called a friendly install).  I
felt it was too risky to proceed because I didn't want to damage my
W98SE main everyday machine.  Asus A7V motherboard.

Would you advise using a Linux distribution root / boot diskette
combination to set up my hard drive.  (I've ruined about 8 laptop
drives in the past trying so am nervous).
Lorraine

chuck gelm wrote:
> 
> Hi, Geoff:
> 
>  Yes.  Although the files (filesystem(s)) are not 'transferred'.
> The filesystem is 'mounted'.
> Each OS must be capable of mounting the filesystem's type:
> second extended, reiserfs, third extended, minix, fat, vfat,
>  ...whatever.
> 
>  I get the impression that each of the two distributions you mention
> are on a separate physical hard drive. This is not necessary.
> One can have multiple operating systems on a single physical drive.
> Each would need a separate partition, AFAIK.
> 
> HTH, Chuck
> 
> geoff wrote:
> >
> > I have a dual-boot Linux system.  Debian 3.0 (Woody), and SuSE 8.0 (Prof).,
> > on separate drives sharing a common machine  (Pentium III at 600 MHz).
> >
> > Both work well, and I am enjoying learning the differences between them,
> > running
> > them as separate alternatives.
> >
> > Would it be inadvisable to have a third hard disk drive  on the same shared
> > machine,
> > which is mountable on either distro, in order to enable files from (say)
> > Debian to be transfered
> > into SuSE,   (or vice-vers) or would I be asking for trouble ?
> >
> > Can I use a common  device  (say)  /dev/hdc  as  a common part of two
> > partition systems ?
> >
> > A possible use would be to YaST/ RPM into Debian, or APT/ DEB into SuSE.
> >
> > Best regards,
> >
> > Geoff Bagley
> > G3FHL.
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
