From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Extra installation
Date: Sun, 11 Aug 2002 07:06:54 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02081107065400.00319@unix.pa3gcu>
References: <001901c240f6$2a4395c0$14000a0a@p75>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001901c240f6$2a4395c0$14000a0a@p75>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Colin Harris <charis.g3orh@virgin.net>, Linux Newbie <linux-newbie@vger.kernel.org>

On Sunday 11 August 2002 05:14, Colin Harris wrote:
> Hi all,
>          New to this list. Could someone outline the
> possibilities please. Problem as below :-
>
> I have a 17Gb HDD. First 5 GB dedicated to Redhat 6.1 and
> runs an ax25 system for a DX cluster and ax25 node system.
>
> Want to try Redhat 7.2 - Tried a second install by creating
> a new 5GB partition. First time it did install, subsequent
> times it stops after 400 mb.    However , the plan was to
> install this later version and run it from the existing
> Lilo. After ( successfully) installing 7.2 and running from
> a floppy , shut down 7.2 , booted 6.1 to include info into
> lilo.conf , run lilo but of course it cannot find files on
> an unmounted system (7.2).

You would need to mount the partition first before running lilo.
Depending on how you plan to configure lilo of course.
There are many ways of achiving what you want, i will explain how i do it.

>
> Questions are :- How to run a second version selectable from
> Lilo ? and are there still problems with installing between
> 5 and 10 GB down a hdd ?. I thought this 1023 cylinder thing
> had been overcome long ago.

You describe adding the new 7.2 system into the old 6.2 lilo, i would advise 
against doing that as newer versions of lilo have less problems with just 
about everything, including the 1023 limit as you point out, i dont know what 
limitations the version has included in 6.2.

I would place both systems under the latest version of lilo, that we can do 
as follows.

Boot into 7.2 with your floppy.
login as root
mount the 6.2 root partition into /mnt
mount -t ext2 /dev/hdxx /mnt
cp /mnt/boot/boot_image /boot/vmlinuz-red-6.2
cp /mnt/boot/System.map /boot/System.map-red-6.2
umount /mnt
edit /etc/lilo.conf
Add a new section for the old 6.2 install.
run lilo with the -t option to check if things are ok.
If all is ok run lilo again to install the new configuration.
reboot now you can choose which system you want.

If you need an example take a look at;

http://people.zeelandnet.nl/pa3gcu/lilo.htm

>
> - Regards Colin

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
