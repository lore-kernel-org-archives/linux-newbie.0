From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: switching to debian (... and installing the NVIDIA GeForce4)
Date: Thu, 25 Mar 2004 17:15:12 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403251715.12023.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.engin.umich.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.engin.umich.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Karthik <karthikv@Alum.Dartmouth.ORG>, Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>, linux-newbie@vger.kernel.org

On Thursday 25 March 2004 15:46, Karthik Vishwanath wrote:
> I installed the 2.4.18 source by 'apt-get install kernel-source-2.4.18',
> extracted the source and made a symbolic /usr/src/linux ->
> /usr/src/kernel-source-2.4.18/, and followed all the instructions below
> as is.
>
> sh NVIDIA-Linux-x86-1.0-5336-pkg1.run quits with an error.
>
> # cat /var/log/nvidia-installer.log | grep ^ERROR
> ERROR: Unable to determine the NVIDIA kernel module filename.


No No No, /usr/src/kernel-source-2.4.18/ is NOT what you want i can assure 
you.

When you untarred the source a directory called linux-2.4.18 should have been 
created you then need to create a symlink to "linux" for my example 
underneat, so lets start again.


cd /usr/src
tar xvzf /path/to/linux-2.4.18.tar.gz
A directory will be created called linux-2.4.18 which now contains the source, 
so you now need to do;
ln -s linux-2.4.18 linux
cd linux
Now edit the Makefile and do like i said.

You can also use the installer with the  --help option you will see that one 
can use switches to direct the installer to "uncommon" directorys, however 
belive me its better to do as i say because sooner or later you WILL get 
problems.

>
> How to proceed?
>
> Thanks,
>
> -K
>
> On Tue, 23 Mar 2004, at 3:49pm, pa3gcu wrote:
> > If you installed the source for 2.4.18 then you should be able to do the
> > following and get away with it;
> >
> > cd /usr/src/linux
> > make mrproper
> > cp /boot/config-xx .config
> > edit Makefile
> > change line 4 from
> > EXTRAVERSION =
> > To
> > EXTRAVERSION = -k7
> > save file;
> > make oldconfig
> > make dep
> > Thats it, now rerun
> > sh NVIDIA-Linux-x86-1.0-5336-pkg1.run
> >
> > Note;
> > i am presuming that debian has the default kernel config in /boot, most
> > systems do store it there for your convinance.
>
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

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
