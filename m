From: Peter Edstrom <peter.p3@home.se>
Subject: Re: Procmail won't filter linux-newbie mail
Date: Mon, 1 Sep 2003 16:42:43 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030901144243.GA1048@linux>
References: <20030831091426.GB2273@linux> <5.1.0.14.1.20030831224453.01f41838@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20030831224453.01f41838@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

> 1. If there is a problem with the first rule matching, adding a second will 
> not help, since now *both* rules have to match (rules get ANDed, not ORd).

I didn't know that; thanks for the information!

> 2. How similarly do the "tons of mailing list filters" employ "this 
> principle" Do you use other filters that work with X- headers? Could you 
> supply an example that works with an X- header? (X- headers should work 
> just fine, so this thought is really a long shot.)

None of my filtering rules use the X-header; I was referring to the
"^(To|Cc):"-condition. An example, however, of a rule that works with
that condition is the FreeBSD-questions, which looks like this:

  :0
  * ^(To|Cc):.*(freebsd-questions|questions)@freebsd.org
  * ^List-Id:.*(freebsd-questions|questions).freebsd.org
  IN.freebsd-questions

> 3. From reading over the procmailrc page, this rule block might work better 
> than what you are trying:
> 
>         :0
>         * ^TO:.*linux-newbie@vger.kernel.org
>         IN.linux-newbie

I've seen this "type" of rule before, but I'm a little confused. Why
is "TO" written with upper-case and not as "To", which is how the
headers appear to be spelled?
 
>  4. Are you sure you have quoted the rules you are using EXACTLY? I ask 
> because there were several small errors (spelling, grammar, diction) in 
> your message, so I do not want to assume you got (for example) the 
> whitespace components of the rules transcribed properly.

What do you mean? Is my text formatted in a weird way, or are you just
complaining about my bad English (I'm from Sweden) ? ;-)
I send the mail in ISO-8859-1 as default. What happens if I send it in
US-ASCII instead (let's try with this one).

> 5. Since you say this happened after you "cleaned up" your .procmailrc file 
> ... what was the rule prior to the editing you did? Is it possible that you 
> did something to the *preceding* rule block that causes a problem with 
> interpretation of this one?

Before it looked like this:

  :0:
  * ^To:.*linux-newbie@vger.kernel.org
  IN.linux-newbie

  :0:
  * ^CC:.*linux-newbie@vger.kernel.org
  IN.linux-newbie

> I've assumed that "stopped filtering" means that the .procmailrc file used 
> to work and no longer does. I also assume that the symptom of the failure 
> is that the messages drop through to subsequent rules (and eventually to 
> your general INBOX) rather than turning up anyplace stranger. If either of 
> these assumptions is wrong, please correct me.

That's a correct assumption. The linux-newbie mail was put in my default
inbox instead of being filtered into the linux-newbie one.

Thanks for helping me out!
/Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
