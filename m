From: Calvin Walton <calvin.walton@gmail.com>
Subject: Re: how to find when a symbol introduced into the kernel
Date: Sun, 15 Jun 2008 09:37:24 -0400
Message-ID: <1213537044.25647.4.camel@zem>
References: <000b01c8ce6b$a7bfda50$f73f8ef0$@edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:subject:from:to:cc
         :in-reply-to:references:content-type:date:message-id:mime-version
         :x-mailer:content-transfer-encoding;
        bh=b+Ti5Dn5eyP9WFY+hOJZ6eHPbRFJmHVoj3OQFKbsYeg=;
        b=IHBNY/NaR1C2ZiEQt/gcInimX5uqa+BHxt/7quRbjjHk9Fp+ehji/MF3d04kDRhFFP
         di9WlvYiOWvTHsJkNJyiWJvH5ZbTwwtV0rdubMWNaz1m+StNv70XzzLi26LDgIkNIbcY
         +/foR9joCKgASTcpf/moSceKR76DVwXtClrwA=
In-Reply-To: <000b01c8ce6b$a7bfda50$f73f8ef0$@edu>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Zhaohui Wang <zwange@gmu.edu>
Cc: linux-newbie@vger.kernel.org, linux-kernel@vger.kernel.org

On Sat, 2008-06-14 at 18:11 -0400, Zhaohui Wang wrote:
> 
> Hi all
> 
> To write multiple kernel version compatible programs, I need to know when a specific symbol (a struct or a function)were introduced in to the kernel tree
> 
> Binary search against multiple kernel sources is a way,but is still slow.Is there any fast way to use modern git technology to make my life easier?
> 
> Many thanks.

You're probably looking for the command
  git log -S functionname
a.k.a. the git pickaxe.

That will show you all of the commits that added or removed a line
containing the name you're interested in, and you can then check just
those changes to see what compatibility may have changed.

To find out what kernel release one of those commits went into, you can
use
  git describe <sha1-hash>
and it will report the last tagged kernel version before that commit was
added.

Hope that helps!

-- 
Calvin Walton <calvin.walton@gmail.com>

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
