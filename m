From: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] commiting the .git/hooks/pre-commit and
 testing the changes on the updated e1000_main.c
Date: Tue, 26 Jul 2016 12:46:14 -0700
Message-ID: <20160726194613.GA14874@d830.WORKGROUP>
References: <64c3385b-6ee7-44ac-bb17-e265d5f9ade8@googlegroups.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=PhOf/bM/snUg+2i94G2PfdvymVvCiqhfyrVKxiEOoGE=;
        b=EL1Bews3Asi+1451/+yT64IatbK1YTJoz8w9ZRiClYLe2+1frXNg/JaRLmyYpkHPlo
         c6DpsaoZZel0kSMLy6qZHaXjNeqXnLuW2CVJVH9C9KjGXrerr33wu2UDyvqTTr7wx2ls
         9dND5VeSoFJ2ndfFyYP03mUVt5qL6PvtaGH2Ut5UvUb+2f5mANxCAAqPKKwZabj9DcCe
         FsbWNTJFEBkomr0KH/rpvIxrf+xW2vEXdwE/gzMDMoTSOmAE32Up4832q/FpUtYK3r01
         e2STWEvsYJpN3MBh+6E3pN5fdx7pzlsx2RiM2A7TmfoQazEzdp5N9az2kZo4m67ZIA3x
         tQVA==
Content-Disposition: inline
In-Reply-To: <64c3385b-6ee7-44ac-bb17-e265d5f9ade8@googlegroups.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: courage angeh <courageangeh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-newbie@vger.kernel.org

Hi Courage ? ;)
I'll help you.  I'm an outreachy intern now. 

We need to move this thread over to linux-newbie mailing list, since
this outreachy list won't be active until the next application round.
Please 'cc linux-newbie on posts as I've done above.

See comments in line below.
alisons


On Tue, Jul 26, 2016 at 11:06:10AM -0700, courage angeh wrote:
> I am a newbie... just start recently preparing for the out reach program in 
> December.... i started at: https://kernelnewbies.org/Outreachyfirstpatch 
> but i have a number of difficulties:
> 1. After editx... ,  recompiling my driver, installing the changes and 
> rebooting my linux system . I tested the changes but i didn't find the 
> message " I can modify the Linux kernel!".... i contacted the irc 
> channel:#kernel-outreachy but i seemed not to exist.

Let's go step by step. 

Let's make sure you put in a printk that will get printed.
Let's make sure you've compiled the module.

Confirm you compiled the module...do you see a .ko with new timestamp?

Can you sudo modprobe <drivername> ?
Or sudo insmod drivername.ko ?

(at this point you don't need to keep rebooting the kernel.  We will
modprobe add/remove your driver.)

post what you have on the above items and I'll take a look.

> 2. i went ahead to creating the .git/hooks/pre-commit but when i try 
> staging and commiting the file i get the respective errors:
> 
> error: Invalid path '.git/hooks/pre-commit'
> error: unable to add .git/hooks/pre-commit to index
> fatal: adding files failed
> 
> and
> 
> error: pathspec 'First patch' did not match any file(s) known to git.
> 
> please some one help me out???

You are not submitted that pre-commit hooks file.  It lives in your
git tree to poke you went you make a submittal.

> 
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/64c3385b-6ee7-44ac-bb17-e265d5f9ade8%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
