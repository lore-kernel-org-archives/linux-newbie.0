From: Ray Olszewski <ray@comarre.com>
Subject: Re: Hiyas
Date: Wed, 12 Mar 2003 08:15:01 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030312080410.01f8c830@celine>
References: <006801c1e757$b0a13350$0301a8c0@netlyncs.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E6EDD42.A2C9BC08@dsl-only.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: pshook <pshook@dsl-only.net>, linux-newbie@vger.kernel.org

At 11:09 PM 3/11/2003 -0800, pshook wrote:
>Give this one a try if y wanna help!!
>
>Not sure if this is the correct newsgroup, if not can you direct me to
>the right one?

This is a mailing list, not a newsgroup ... but other than that, it is a 
god place to pose beginner questions. Others have already given you some 
feedback specific to Red Hat. My comments will be a bit more general (since 
I'm not a Red Hat user).

>I am trying to compile my kernel for RH7.3. It doesn't generate any
>errors,

Does "it" here refer to the compilation, the install after compilation, or 
the boot/init process? On a guess that it means the first of these, please 
check (after a reboot with the working kernel) whether syslog has logged 
any helpful information in your logs (probably in /var/log)..

>but it fails to find/load eth0 and vfat.

Is this the same or a different "it"? Since eth0 is an interface and vfat 
is (probably) a kernel module, I'm not exactly sure what you mean by 
"find/load". Could you describe the errors you see a bit more exactly? If 
you are a beginner at kernel compiles, there is any number of possible 
errors that might cause this, including:

         1. Failing to add the required modules to your kernel .config file 
list
         2. Failing to do both "make modules" -AND- "make modules_install" 
during the compilation process.
         3. Failing to add the modules to the list that will be loaded 
during boot/init (I'm hazy on how RH does this; one way to do it is with 
the listing  /etc/modules).

>It won't go past
>starting system logger and has many no such file or directory statements
>after the first fail which is eth0.

Do you mean by this that the kernel not only fails to "find/load" eth0 and 
vfat, but that it never completes the boot/init process (that is, you never 
get a login: prompt)? If so, I would wonder if it has the correct root (/) 
filesystem assigned ... check your /etc/lilo.conf (or equivalent, if you 
use a different bootloader) to make sure it has the right root= entry for 
the stanza associated with your custom kernel.

>Is there a way to set the make xconfig back to a default or what the
>original kernel on my system is? I can still boot with the original
>kernel but not the new one.

The advice someone else provided here is (at least to a degree) Red Hat 
specific; not all kernel-source files include the ./configs directory that 
message suggested.




[...]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
