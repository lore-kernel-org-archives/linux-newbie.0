From: Anshuman Singh Rawat <asr245@nyu.edu>
Subject: Re: Partitioning problem
Date: Fri, 26 Jul 2002 10:39:16 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <107a26d107876a.107876a107a26d@homemail.nyu.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Language: en
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl
Cc: linux-newbie@vger.kernel.org

Thanks for the response. 
but the problem is that with the partition shown below i am never able 
to boot using linux. so i cant edit the lilo.conf.
or shud i change partition 1 (/dev/hda1) to type ext2 from current 
vfat. coz that was the only way i cud boot into linux?

----- Original Message -----
From: pa3gcu <pa3gcu@zeelandnet.nl>
Date: Thursday, July 25, 2002 2:22 am
Subject: Re: Partitioning problem

> On Wednesday 24 July 2002 21:24, Anshuman Rawat wrote:
> > Hi,
> > I want to have both WinXP and Linux (RHL7.3) on my system but am 
> having> trouble with the partitions. My partition table (i dunno 
> whether thats the
> > correct term) looks like this (as shown by linux installer ) -
> >
> >                                 Start   End        Size(MB)      
> Type
> > Mount point    Format
> > /dev/hda
> >     -Free                        1        1            8         
>   Free
> > space
> >     -/dev/hda1                 2        7            47          
vfat
> > No
> >     -/dev/hda2                8        708        5499      NTFS
> > No
> >     -/dev/hda3               709     2432      13523    Extended
> >         -/dev/hda5           709     1413      5530      NTFS
> > No
> >         -/dev/hda6           1414   1419      47          ext2
> > /boot               Yes
> >         -/dev/hda7           1420   1453      267        swap
> > Yes
> >         -/dev/hda8           1454    2432     7697      ext2
> > /                       Yes
> >
> > the error message i get is -> Boot partition may not meet booting
> > constraints for your architecture. Creation of boot disk is highly
> > encouraged.
> 
> Thats not an error message but a warning from the install process, 
> as you see lilo or grub was installed.
> 
> > The options I get is "modify partition" and "add anyway". If I 
> proceed with
> > 'add anyway' option installation is succesful but I dont get the 
> option of
> > selecting the OS for booting the PC and the PC boots using WinXP.
> > I tried changing the /dev/hda1 partition to ext2 ,mount pt 
> /boot. The
> > installation was succesful and so was the boot, but then the 
> option of
> > starting with WinXP dissapeared. I could only boot with Linux
> > Can anyone help me out here?
> > btw I used Partition Magic from WinXP to partition the disc as I 
> dont know
> > how to work around usinf fdisk in Linux.
> 
> You need to change you lilo.conf file, or grub which ever you told 
> redhat to 
> install.
> 
> I do not use grub so someone else will need to give you and 
> example for grub
> lilo can be told to boot linux as default, it may be that in 
> /etc/lilo.conf a 
> line is presant
> default = xxx
> Simply change the xxx to the "name" stated in the linux portion 
> lower down in 
> the file, or if no default = is present place the linux entry as 
> the first 
> entry.
> Save the file and run lilo with the -t option,
> /sbin/lilo -t
> If no errors are found you will see something like;
> 
> Added Linux *
> Added dos
> The boot sector and the map file have *NOT* been altered.
> 
> Now rerun lilo as is.
> /sbin/lilo
> reboot and linux is the default system.
> 
> Its all explained on my home page;
> 
> http://people.zeelandnet.nl/pa3gcu/kernel.htm
> 
> >
> > -Anshu
> >
> >
> > -
> > To unsubscribe from this list: send the line "unsubscribe linux-
> newbie" in
> > the body of a message to majordomo@vger.kernel.org
> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
> > Please read the FAQ at http://www.linux-learn.org/faqs
> 
> -- 
> Regards Richard
> pa3gcu@zeelandnet.nl
> http://people.zeelandnet.nl/pa3gcu/
> 
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
