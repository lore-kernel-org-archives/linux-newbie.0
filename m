From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: deleting a bad kernel
Date: Sun, 4 Apr 2004 10:17:50 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200404041017.50641.pa3gcu@zeelandnet.nl>
References: <20040404002506.GA606@panix.com>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040404002506.GA606@panix.com>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rei Shinozuka <shino@panix.com>, Newbie Linux Users <linux-newbie@vger.kernel.org>

On Sunday 04 April 2004 02:25, Rei Shinozuka wrote:
> i downloaded a new new kernel using Up2date (which was much MUCH
> better after finding suitable mirrors).  it downloaded without a hitch,
> but when it started, it deleted by nVideo Corporation/nForce2 ethernet
> controller (it asked me and i stupidly assented).  i can't seem to get it
> back, especially without any net access any longer.  so i booted to the
> old kernel which is fine.

Let me rephrase your plee for help.

You downloaded a kernel with up2date, which is no doubt a precompiled kernel, 
obviously that kernel does not have support for your nforce ethernet chip.
Now its not the kernel which says (as you put it)  "it asked me and i stupidly 
assented" that was Kadzu a configuration program.

You made no mention of a kernel version number, so i now need to explain about 
nforce chipsets.

In kernels 2.4.xx there is NO support for nforce chipsets, there is however a 
driver available from nvidia.com, at the moment it only supports 2.4.xx 
kernels, as a matter fo fact i checked yesterday for someone else.

That means if you upgrade a kernel like you have and it is a 2.4.xx kernel you 
need to "reinstall" the nforce driver.

So you see if you have a 2.4.xx kernel and you used up2date to install the new 
2.4.xx kernel then you now have no more support untill you reinstall the 
driver. Latest version is;
NVIDIA_nforce-1.0-0261, it is in rpm format or tar.gz, there is a very good 
document for reading on howto install it.

>
> i'd like to try loading the new kernel again, but i think i need to
> delete it completely first.  how do i go about doing so?  thanks,

You can leave as many kernels as you wish anywhere you want, providing that 
your bootloader has multiple kernels to choose from at bootime.

In otherwrods no you dont need to delete it first.

>
> -rei

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
