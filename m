From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: switching to debian (... and installing the NVIDIA GeForce4)
Date: Mon, 22 Mar 2004 23:44:05 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0403222314190.23426-100000@legolas.personal.engin.umich.edu>
References: <405FAC4A.1000609@sancharnet.in>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <405FAC4A.1000609@sancharnet.in>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Which driver(s) must I get from nvidia? I can get to their download site 
(nvidia.com/object/linux.html), but am unsure what I need to download. 

I got the latest version which gives me a file:  
NVIDIA-Linux-x86-1.0-5336-pkg1.run.  

# sh NVIDIA-Linux-x86-1.0-5336-pkg1.run

quits with a series of errors saying that "no matching precompiled kernel
interface was found", followed by "unable to find your kernel source
tree".

Now, I think a part of the problem here is that I do not have a matching
kernel that is running with a kernel source. 'uname -r ' gives 2.4.18-k7.  
I can find (and have installed) a kernel-source-2.4.18 package, but not a
kernel-source-2.4.18-k7 package. How to fix it?

Thanks,

-K

On Tue, 23 Mar 2004, at 8:47am, joy wrote:

> I see that you are using a Geforce 4 in a debian woody system. the
> Xfree86 along with the stable distro does not support the GF4. so you
> better get the latest nvidia drivers for linux from nvidia.com and
> install it. that should( no, will ;-) clear up your problem.
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
