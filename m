From: Ray Olszewski <ray@comarre.com>
Subject: Re: mounting cdrom
Date: Wed, 24 Jul 2002 07:59:13 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020724074713.023973a0@celine>
References: <007601c21bd7$2ec116c0$148e1ec4@jantar.co.za>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <007601c21bd7$2ec116c0$148e1ec4@jantar.co.za>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Hendrik Fourie <hendrikf@jantar.co.za>, linux-newbie@vger.kernel.org

At 04:30 PM 6/24/02 -0700, Hendrik Fourie wrote:
> > At 02:44 PM 6/24/02 -0700, Hendrik Fourie wrote:
> > >i am using redhat 7.2 and kde and when i try to mount the cdrom within
>kde
> > >it gives the error message that "/dev/cdrom is not a valid block device".
> >
> > What is the output of "ls -l /dev/cdrom"? Is the symlink set up correctly?
>
>i havent run "ls -l /dev/cdrom", but by the symlink i assume you mean the
>entries in the fstab file which allows me to mount the cdrom  by using
>"mount /dev/cdrom" only  as opposed to having to enter the entire "mount  -t
>iso9660 /dev/hda  /mnt/cdrom" command?,  i only have a vague idea what
>symlinks are and how to set them up :),
>anyway, the entries in the fstab file is correct.

Nope, bad assumption; that is not what I mean. Please do as I ask and I'll 
explain after I see the result. Or read "man ls" to learn what symlinks are.

> >
> > >using kde terminal window i tried  running "su" and entering the root
> > >password, then i run the command "mount  -t iso9660 /dev/hda  /mnt/cdrom
>and
> > >it gives me the exact same error message.
> >
> > Surely not the *exact* same error message (since this command does not
>make
> > use of /dev/cdrom).
>
>
>no, instead of "/dev/cdrom" it shows "/dev/hda"  is not a valid block
>device.

Did you recheck this just now, or are you correcting your prior posting 
from memory? If the first, then why didn't you run the other command I 
asked you to do above (since doing so would take about 10 seconds, less 
time than I am spending writing this sentence)? If the second, please 
recheck your work (that is, do what I request below) ... you will 
understand, I hope, that I am hesitant to rely on your demonstrably faulty 
memory.

Or did you have the actual text saved somewhere to check? If so, then 
please post it here.

> >
> > Please post the exact command you enter and the exact response from the
>system.

[...]

>i am using the grub bootloader which is written to the mbr of the first
>hdd.( i think)
>hda and hdb really are the cdrom drives, and i can mount the fat32 partition
>and acces it in linux by using "mount -t vfat /dev/hdc1 /dev/mnt/windows"
>and it shows the content of my windows hdd. i don't know if and how the
>/dev/hd* entries were modified, since i installed rh7.2 with the default
>options an i certainly never changed it myself.


This description is puzzling. Unless RH changed to using grub as its 
default bootloader and I missed that news ... possible, I suppose, but 
surely not way back in 7.2 ...the system you describe is not using *all* 
the default options. In any case, this is unlikely to be the source or your 
problem.



--
-----------------------------------------------"Never tell me the 
odds!"--------------
Ray Olszewski					     -- Han Solo
Palo Alto, California, USA				ray@comarre.com
-------------------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
