From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: correlating module names and config options
Date: Thu, 16 Oct 2003 17:39:43 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0310161734080.4928@ppg_penguin>
References: <5.1.0.14.1.20030919151403.01f82f78@celine> <3F8DF611.5010708@rcn.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F8DF611.5010708@rcn.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: John Aspinall <jgaspinall@rcn.com>
Cc: linux-newbie@vger.kernel.org

On Wed, 15 Oct 2003, John Aspinall wrote:

> I'm building my first kernels from sources, and I'm comparing the result
> with the kernel as shipped with typical major distro.  The
> "distro-kernel" is loaded with every possible option built as a module.
>   (Not at all surprising, since they need to install on all kinds of
> hardware.)  But this brings up the following question:
>
> I run lsmod in my distro-kernel to find the modules I actually need on
> this particular hardware.  But how do I establish the relationship
> between the module name, and the configuration option I should choose
> when doing 'make config' or 'make xconfig'?  The correspondence is not
> always obvious.
>
> John
>

 Have a look at Documentation/Configure.help in your source tree. If
you're using `less' you can search with the `/' key, then scroll up to
read the lines above the module name where the configure option is
listed.

 It's probably also worth looking at what options are nearby in this
file, to try to get pointers to where you can actually find the option
in menuconfig or xconfig.

HTH

Ken
-- 
Will code payroll for food.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
