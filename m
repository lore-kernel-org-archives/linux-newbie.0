From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: switching to debian (... and installing the NVIDIA  GeForce4)
Date: Thu, 25 Mar 2004 21:06:04 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403252106.04253.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.44.0403251127320.26064-200000@legolas.personal.engin.umich.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0403251127320.26064-200000@legolas.personal.engin.umich.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

On Thursday 25 March 2004 17:46, Karthik Vishwanath wrote:
> I tried adding/removing spaces from the Makefile and I still cannot get
> 'sh NVIDIA-Linux-x86-1.0-5336-pkg1.run' to function alright. I did
> download NVIDIA-Linux-x86-1.0-5336-pkg1.run from nvidia's website and have
> not installed the Debian package nvidia-kernel-source.
>
> 'uname -r' gives 2.4.18-k7. The Makefile in /usr/src/linux at its top
> reads:
>
> VERSION = 2
> PATCHLEVEL = 4
> SUBLEVEL = 18
> EXTRAVERSION =-k7

I said;
EXTRAVERSION = -k7
i meant it.

A question to you, did you do;

make oldconfig
make dep
like i suggested, ????

The above does not mean you need to do the rest of a kernel compile ie, make 
bzImage modules modules_install etc etc, you need to configure the source 
thats all.
Files get created by make oldconfig and make dep which the nvidia installer 
gets information from.

> I have attached the nvidia-installer.log as an attachment (as its about
> ~2K). I could'nt spot anything significant in that log -- perhaps my eyes
> are unfamiliar wrt to what to seek...
>
> I did not follow Richards suggestion below since the untarring of the
> zipped source did create /usr/src/kernel-source-2.4.18/.

If you do not follow what i wrote then you will have problems period.
You can however ensure that /usr/src/kernel-source-2.4.18 has a symlink called 
linux pointing to it, or use the installers options to define where the 
source is, whichever way you choose you MUST reconfigure the kernel source 
and edit the makefile otheriwse it WILL NOT WORK.

About your directory /usr/src/kernel-source-2.4.18 if thats what you got when 
unpacking the source then it looks like you dont have the "offical" kernel 
source available from kernel.org as that i can assure you the offical source 
of 2.4.18 creates a directory called linux-2.4.18 and i cannot stress it 
enough but to say period.

Ray suggested to fall back on an older driver, i do not suggest that at all as 
i have 5336 running here on a slackware 9 system and a suse 9 system.
Like i mentioned before there are some issues with the driver itself in the 
way it works, BUT there are issues with all nvidia's drivers, just because i 
said there are issues with tis driver "here" does NOT mean you will have 
problems.

As i said before and i repeat, if you follow my instrutions then it will work 
i can assure you.

You MUST assure that the installer can find the kernel source AND that the 
kernel source is configured with the SAME options your running kernel has, 
thats it really.

If only you was next door i would come and show you how to do it there is no 
secret.
After all if you read;
 ftp://download.nvidia.com/XFree86/Linux-x86/1.0-5336/README
You will see that my examples are written there, they are not there for the 
duration, they are there to help you.

It even states that you need to have the source installed, make sure the 
installer knows where they are AND that the sources have been configured 
peropery by;
coping the config file of your running kernel to /usr/src/linux or the place 
where you tell the installer they are and that you have configured the 
sources with make oldconfig and make dep, if you dont do that your buggered 
period.


> -K
>
> On Thu, 25 Mar 2004, at 8:28am, Ray Olszewski wrote:
> > At 05:15 PM 3/25/2004 +0100, pa3gcu wrote:
> > >No No No, /usr/src/kernel-source-2.4.18/ is NOT what you want i can
> > > assure you.
> > >
> > >When you untarred the source a directory called linux-2.4.18 should have
> > > been created you then need to create a symlink to "linux" for my
> > > example underneat, so lets start again.
> >
> > Actually, Richard, this is just a Debian naming convention that you are
> > unfamiliar with. Here, for example, is a relevant portion of my /usr/src
> > directory:
> >
> > autovcr@kuryakin:~$ ls -l /usr/src
> > [...]
> > drwxr-xr-x   15 root     root         4096 Mar  4 10:59
> > kernel-source-2.4.19 -rw-r--r--    1 root     root     25652223 Dec  5
> > 15:59
> > kernel-source-2.4.19.tar.bz2
> > lrwxrwxrwx    1 root     src            20 Aug 19  2002 linux ->
> > kernel-source-2.4.19
> >
> > In Debian when you un'tar (for example) kernel-source-2.4.19.tar.bz2 you
> > get a directory tree named kernel-source-2.4.19, NOT one named
> > linux-2.4.19.
> >
> > I'm so used to this convention that I'd quite forgotten that other
> > distros don't follow it.

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
