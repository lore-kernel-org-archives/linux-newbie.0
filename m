From: Ray Olszewski <ray@comarre.com>
Subject: Re: about upgrading the kernel.
Date: Sun, 27 Apr 2003 10:35:24 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030427103023.01f12610@celine>
References: <20030427172040.GA6928@storm.armateknik.com.tr>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030427172040.GA6928@storm.armateknik.com.tr>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:20 PM 4/27/2003 +0300, Halil Demirezen wrote:
>Hi folks,
>
>I want to know, as the new patches and upgrades are published for the 
>kernel, do i have to re-compile the
>whole kernel after i pached it? or is there any easy way of doing it so?

It depends on the patch and what compile options you have set. If ONLY 
module code is patched, you MIGHT get away with just recompiling the 
modules. But knowing that much about the patches themselves is not trivial, 
so the usual procedure is to do a complete kernel recompile.

As to "any easy way" ... what do you find difficult about doing a kernel 
compile? On my machines, it takes a lot of machine time, but only small bit 
of my time (after I do the first one, that is, which involves going through 
the config file, in my case with "make menuconfig", to select the options I 
want).



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
