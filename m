From: Ray Olszewski <ray@comarre.com>
Subject: Re: kernel configuration
Date: Tue, 09 Sep 2003 12:04:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030909115540.01f0c6f0@celine>
References: <200309091456.UAA09789@WS0005.indiatimes.com>
 <200309091456.UAA09789@WS0005.indiatimes.com>
 <Pine.LNX.4.56.0309091122450.1048@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0309091122450.1048@homenet>
References: <200309091456.UAA09789@WS0005.indiatimes.com>
 <200309091456.UAA09789@WS0005.indiatimes.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:29 AM 9/9/2003 -0500, James Miller wrote:
>On Tue, 9 Sep 2003, atticclaw wrote:
>
> > Hi,
> >    Well I have vmware 4.0 in which I have installed RH 9.0 it comes 
> with kernel 2.4.20-8 . I have downloaded fresh kernel 2.4.18 . I am 
> tryibg to configure the kerne l but it is giving me an error saying tht 
> my module sd_mod.o is compile for kernel 2.4.22 while I am using kernel 
> 2.4.18 .
> >             Why is this is happeneing ?
> > Pls help me out
>
>Mmmm.  I think it's because add-on modules are compiled for a given
>kernel.  They're not supposed to work with kernels for which they were not
>compiled.  That said, I've forced one to run with the -f switch and had it
>work ok (a NIC module) for me - I think others will advise you against
>trying this though, and if you have alot of modules it might not work for
>you like it did for me anyway.  So, assuming you've compiled your own
>2.4.18 kernel, I'm pretty sure you'll need to compile a new set of modules
>for it.  If you didn't compile your own kernel, you'll need to do that
>first, since I think to compile the modules you'll need to have kernel
>headers available (they only appear in your system if you've compiled your
>own kernel).  Please wait for others to respond to your question too,
>since I'm not any kind of big authority on this list.


James' guess is as good as any can be at this stage. The original question 
provides way too little information for real help. It is not even clear if 
the question is about kernel source or a precompiled binary. So ...

1. Clarify "configure the kernel". Do you mean run one of the options (make 
config, make menuconfig, or make xconfig) to create a .config file for the 
kernel source? Or do you mean something else?

2. What is the "it" that gives you an error? The configure script? Some 
step in the compile process? An attempt to insmod or modprobe the module? 
What is the EXACT error you get?

3. You only mention kernel 2.4.20-8 and 2.4.18. Is there any version of 
2.4.22 on the system? (actually, I didn't even know there was a 2.4.22 -- 
Debian sources seem only go up to 2.4.21.)

4. If the problem does occur during compile, did you follow all the steps 
needed to compile a new kernel? As outlined in the kernel source README 
file, I mean.

5. If you are talking about a precompiled kernel, not source, be as much 
more specific as you can about what you downloaded. In particular, did you 
download and install the associated modules for the new binary?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
