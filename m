From: cr <cr@orcon.net.nz>
Subject: Re: Moving Hard Drive
Date: Sat, 17 Jan 2004 09:49:07 +1300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200401162145.i0GLjZDu004162@dbmail-mx3.orcon.co.nz>
References: <20040116105630.D896B1C900@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040116105630.D896B1C900@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>, linux-newbie@vger.kernel.org

On Fri, 16 Jan 2004 23:56, Peter wrote:
> Hi,
>
> I got myself a new larger hard drive which is presently a secondary master
> hdc. On it I have RH9 and SW9.1 the latter doing the booting with lilo.
>
> I want to make now this drive the master drive by which I assume it will
> become hda.
>
> Is it correct then that before doing the switch I will have to change in
> /etc/fstab and lilo.conf all what is labeled hdc to hda? 

Yes, certainly for fstab and I'm pretty sure for lilo.conf too (I use Grub 
myself and it would apply to Grub's conf file 'menu.lst').
I'd first make a copy of the fstab and conf files just in case something goes 
wrong and you want to change back.

> Boot initially
> from a floppy into SW run lilo and I should be set with the new drive as
> master.

That would work OK with Grub so I guess it will work with Lilo.

Re the boot floppy, if it was created when you installed your system, it may 
be set to boot your system on hdc and may fail when you move it to hda.   
I find it handy to have a Grub boot floppy which I can use to boot a system 
'anywhere', I don't know if Lilo makes a similar boot floppy.    I also find 
it handy to keep a spare floppy 'rescue disk' like Toms Root Boot, RIP or 
Leka, or an install CD with a 'Rescue' option.

Btw, I'm not sure what distro 'SW' is but I think fstab, Lilo and Grub work 
nearly the same way in all distros.

cr
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
