From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: switching to debian (... and installing the NVIDIA GeForce4)
Date: Thu, 25 Mar 2004 09:46:00 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0403250945300.26064-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


I installed the 2.4.18 source by 'apt-get install kernel-source-2.4.18', 
extracted the source and made a symbolic /usr/src/linux -> 
/usr/src/kernel-source-2.4.18/, and followed all the instructions below
as is. 

sh NVIDIA-Linux-x86-1.0-5336-pkg1.run quits with an error. 

# cat /var/log/nvidia-installer.log | grep ^ERROR
ERROR: Unable to determine the NVIDIA kernel module filename.


How to proceed? 

Thanks,

-K

On Tue, 23 Mar 2004, at 3:49pm, pa3gcu wrote:

> If you installed the source for 2.4.18 then you should be able to do the 
> following and get away with it;
> 
> cd /usr/src/linux
> make mrproper
> cp /boot/config-xx .config
> edit Makefile
> change line 4 from 
> EXTRAVERSION =
> To
> EXTRAVERSION = -k7
> save file;
> make oldconfig
> make dep
> Thats it, now rerun
> sh NVIDIA-Linux-x86-1.0-5336-pkg1.run
> 
> Note;
> i am presuming that debian has the default kernel config in /boot, most 
> systems do store it there for your convinance.
> 
> 



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
