From: Ray Olszewski <ray@comarre.com>
Subject: Re: su fails
Date: Tue, 15 Jul 2003 10:29:06 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030715102412.01fa2c40@celine>
References: <oprsc1u8ichmmv6x@smtp.arrakis.es>
 <3F133105.7010309@bcgreen.com>
 <5.1.0.14.1.20030714080202.01ef9e68@celine>
 <oprsa696n7hmmv6x@smtp.arrakis.es>
 <oprsbalrywhmmv6x@smtp.arrakis.es>
 <200307142023.43039.pa3gcu@zeelandnet.nl>
 <oprsbc6ofjhmmv6x@smtp.arrakis.es>
 <3F133105.7010309@bcgreen.com>
 <5.1.0.14.1.20030715074706.01faa538@celine>
 <oprsc1u8ichmmv6x@smtp.arrakis.es>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1058288791.4987.20.camel@gandalf.ciccio-net.cjb.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:06 PM 7/15/2003 -0400, Alan Bort wrote:
>Well... I think bash actually has a builtin su... so if you reinstall
>bash (not a very big package anyway)... it might help. since you've
>already installed shadow again...

On what basis do you think this to be true?

  I've never heard of such a capability in bash, and implementing it would 
(at least on today's systems, ones with passwords in /etc/shadow) introduce 
some security problems that a standalone su can minimize, if not eliminate.

Just to double check, I searched an online version of the bash man page for 
the string "su". It never appears, except as part of words like "subshell" 
and "substitute".

I hesitate actually to say that you are wrong, Alan, because it is always 
possible that I missed something. But I do think it worth asking how 
well-based your belief is.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
