From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: switching to debian (... and installing the NVIDIA GeForce4)
Date: Tue, 23 Mar 2004 15:49:23 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200403231549.23136.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.44.0403222314190.23426-100000@legolas.personal.engin.umich.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0403222314190.23426-100000@legolas.personal.engin.umich.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Karthik <karthikv@Alum.Dartmouth.ORG>, Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>, linux-newbie@vger.kernel.org

On Tuesday 23 March 2004 05:44, Karthik Vishwanath wrote:
> Which driver(s) must I get from nvidia? I can get to their download site
> (nvidia.com/object/linux.html), but am unsure what I need to download.
>
> I got the latest version which gives me a file:
> NVIDIA-Linux-x86-1.0-5336-pkg1.run.

I have this one on a slackware 9 system using a TI4200
and on suse 9 with a FX5200 works fine.

> # sh NVIDIA-Linux-x86-1.0-5336-pkg1.run
>
> quits with a series of errors saying that "no matching precompiled kernel
> interface was found", followed by "unable to find your kernel source
> tree".
>
> Now, I think a part of the problem here is that I do not have a matching
> kernel that is running with a kernel source. 'uname -r ' gives 2.4.18-k7.
> I can find (and have installed) a kernel-source-2.4.18 package, but not a
> kernel-source-2.4.18-k7 package. How to fix it?

If you installed the source for 2.4.18 then you should be able to do the 
following and get away with it;

cd /usr/src/linux
make mrproper
cp /boot/config-xx .config
edit Makefile
change line 4 from 
EXTRAVERSION =
To
EXTRAVERSION = -k7
save file;
make oldconfig
make dep
Thats it, now rerun
sh NVIDIA-Linux-x86-1.0-5336-pkg1.run

Note;
i am presuming that debian has the default kernel config in /boot, most 
systems do store it there for your convinance.

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
