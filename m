From: James Miller <jamtat@mailsnare.net>
Subject: Re: kernel configuration
Date: Tue, 9 Sep 2003 11:29:45 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0309091122450.1048@homenet>
References: <200309091456.UAA09789@WS0005.indiatimes.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200309091456.UAA09789@WS0005.indiatimes.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie <linux-newbie@vger.kernel.org>

On Tue, 9 Sep 2003, atticclaw wrote:

> Hi,
>    Well I have vmware 4.0 in which I have installed RH 9.0 it comes with kernel 2.4.20-8 . I have downloaded fresh kernel 2.4.18 . I am tryibg to configure the kerne l but it is giving me an error saying tht my module sd_mod.o is compile for kernel 2.4.22 while I am using kernel 2.4.18 .
>             Why is this is happeneing ?
> Pls help me out

Mmmm.  I think it's because add-on modules are compiled for a given
kernel.  They're not supposed to work with kernels for which they were not
compiled.  That said, I've forced one to run with the -f switch and had it
work ok (a NIC module) for me - I think others will advise you against
trying this though, and if you have alot of modules it might not work for
you like it did for me anyway.  So, assuming you've compiled your own
2.4.18 kernel, I'm pretty sure you'll need to compile a new set of modules
for it.  If you didn't compile your own kernel, you'll need to do that
first, since I think to compile the modules you'll need to have kernel
headers available (they only appear in your system if you've compiled your
own kernel).  Please wait for others to respond to your question too,
since I'm not any kind of big authority on this list.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
