From: Daniel Cheng <gmane@sdiz.net>
Subject: Re: Copy-on-Write
Date: Wed, 06 Feb 2008 21:17:57 +0800
Message-ID: <focc27$s9v$1@ger.gmane.org>
References: <ea11fea30802060300y73391357icfa2a94e3ff7971@mail.gmail.com> <C86899CCB10A6C4E93D5978DCB232D4B07A303A9@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B07A303A9@GDCMX01.igglobal.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: kernelnewbies@nl.linux.org

Rajat Jain wrote:
[...]
> 
> So as the author says, isn't running child first a good idea that needs to be implemented?

This have been discussed for a few times in lkml. The actual behavior
have been change back and fore for a few times.

You should never depend on this implementation detail for not doing
process synchronization.

> 
> Thanks,
> 
> Rajat
> -

-- 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
