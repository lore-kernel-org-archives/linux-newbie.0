From: Ray Olszewski <ray@comarre.com>
Subject: Re: switching to debian (... and installing the NVIDIA
  GeForce4)
Date: Thu, 25 Mar 2004 08:28:23 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040325082305.01f8d7d0@celine>
References: <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.engin.umich.edu>
 <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.engin.umich.edu> <200403251715.12023.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200403251715.12023.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.engin.umich.edu>
 <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.engin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:15 PM 3/25/2004 +0100, pa3gcu wrote:
>On Thursday 25 March 2004 15:46, Karthik Vishwanath wrote:
> > I installed the 2.4.18 source by 'apt-get install kernel-source-2.4.18',
> > extracted the source and made a symbolic /usr/src/linux ->
> > /usr/src/kernel-source-2.4.18/, and followed all the instructions below
> > as is.
> >
> > sh NVIDIA-Linux-x86-1.0-5336-pkg1.run quits with an error.
> >
> > # cat /var/log/nvidia-installer.log | grep ^ERROR
> > ERROR: Unable to determine the NVIDIA kernel module filename.
>
>
>No No No, /usr/src/kernel-source-2.4.18/ is NOT what you want i can assure
>you.
>
>When you untarred the source a directory called linux-2.4.18 should have been
>created you then need to create a symlink to "linux" for my example
>underneat, so lets start again.

Actually, Richard, this is just a Debian naming convention that you are 
unfamiliar with. Here, for example, is a relevant portion of my /usr/src 
directory:

autovcr@kuryakin:~$ ls -l /usr/src
[...]
drwxr-xr-x   15 root     root         4096 Mar  4 10:59 kernel-source-2.4.19
-rw-r--r--    1 root     root     25652223 Dec  5 15:59 
kernel-source-2.4.19.tar.bz2
lrwxrwxrwx    1 root     src            20 Aug 19  2002 linux -> 
kernel-source-2.4.19

In Debian when you un'tar (for example) kernel-source-2.4.19.tar.bz2 you 
get a directory tree named kernel-source-2.4.19, NOT one named linux-2.4.19.

I'm so used to this convention that I'd quite forgotten that other distros 
don't follow it.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
