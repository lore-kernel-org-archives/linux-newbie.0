From: Ray Olszewski <ray@comarre.com>
Subject: Re: LI -lilo booting problem
Date: Thu, 25 Jul 2002 23:28:10 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020725230457.022898b0@celine>
References: <3D36DDA3.FA0F073C@gmx.net>
 <200207241807.06375.linux-newbie@jimmo.com>
 <001601c23358$7b5bd630$e908a8c0@Viper>
 <02072506225706.04469@unix.pa3gcu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D406BBB.E208E07B@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Chuck Gelm <nc8q@gelm.net>, linux-newbie@vger.kernel.org

At 05:20 PM 7/25/02 -0400, Chuck Gelm wrote:
>Howdy, Y'all:
>
>  Where can I find help with 'lilo'.

On my (Debian) systems, /usr/share/doc/lilo contains an excellent LILO 
Manual. You might see if Slackware installs something similar or do a Web 
search for a LILO Manual.

>When I try to boot from hard disk, I get:
>
>LI

The LILO Manual describes this result as follows:

         LI   The first stage boot loader was able to load the second stage 
boot
         loader, but has failed to execute it. This can either be caused by a
         geometry mismatch or by moving /boot/boot.b without running the map
         installer.

>  This happens with several hard disks, usually large ones of
>8 gigabytes or larger. The drives are partitioned with
>  partition 1 <= 1024 cylinders,

How certain are you of this? Large hard disks (>8GB) lie about their 
geometries in ways I do not completely understand. And if you are creating 
a root partition big enough to hold the entire install, it may be big 
enough to trigger problems with some disk/BIOS combinations.

The way (or at least *a* way) around this is to partition as follows:

hda1 -- small (50 MB or so) Linux partition. Mount this as /boot so lilo 
(the Linux installer program) will save the second-stage loader and kernel 
image there.
hda2 -- big root (/) partition that you install the distro itself to.
hda3 --  swap (if you need swap)
hda4 -- whatever you meant by "the rest" in your list below.

Even with real weirdness in geometry, the first 50 megs of even a very 
large hard disk (the largest I've used is 100 GB) won't run into track-1024 
problems.

>  partition 2 is some swap, and
>  partition 3 is 'the rest'.
>Partition 1 is '/' and contains the entire distribution
>install (Slackware v8.0).
>
>  I've read some help files and it mentions drive geometry
>problems and the 1024 cylinder limit.  I usually keep
>trying different hard drives until I get one that will
>boot and then I make it /dev/hda.
>
>The system boots fine from CD-ROM (Slackware8.0 Install)
>or pre-install boot disk or post-install created lilo floppy.

The /usr/share/doc/lilo directory on my newer systems includes a file 
called README.common.problems, much of which is devoted to a discussion of 
the LI symptom and ways to address drive-geometry problems. You might see 
if Slackware provides it as well.

Oh ... it took me less than 5 minutes on Google to find the two reference 
documents I mentioned above online, at URL

         http://www.gnuenterprise.org/doc/lilo/


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
