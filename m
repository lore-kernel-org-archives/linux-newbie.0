From: Ray Olszewski <ray@comarre.com>
Subject: Re: Procmail won't filter linux-newbie mail
Date: Sun, 31 Aug 2003 23:05:42 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030831224453.01f41838@celine>
References: <20030831091426.GB2273@linux>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030831091426.GB2273@linux>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I have not run procmail here in quite some time, so my memory of these 
things is a bit hazy. But since I saw no other replies, I thought I'd take 
a shot at it, with apologies in advance for any errors.

1. If there is a problem with the first rule matching, adding a second will 
not help, since now *both* rules have to match (rules get ANDed, not ORd).

2. How similarly do the "tons of mailing list filters" employ "this 
principle" Do you use other filters that work with X- headers? Could you 
supply an example that works with an X- header? (X- headers should work 
just fine, so this thought is really a long shot.)

3. From reading over the procmailrc page, this rule block might work better 
than what you are trying:

         :0
         * ^TO:.*linux-newbie@vger.kernel.org
         IN.linux-newbie

  4. Are you sure you have quoted the rules you are using EXACTLY? I ask 
because there were several small errors (spelling, grammar, diction) in 
your message, so I do not want to assume you got (for example) the 
whitespace components of the rules transcribed properly.

5. Since you say this happened after you "cleaned up" your .procmailrc file 
... what was the rule prior to the editing you did? Is it possible that you 
did something to the *preceding* rule block that causes a problem with 
interpretation of this one?

I've assumed that "stopped filtering" means that the .procmailrc file used 
to work and no longer does. I also assume that the symptom of the failure 
is that the messages drop through to subsequent rules (and eventually to 
your general INBOX) rather than turning up anyplace stranger. If either of 
these assumptions is wrong, please correct me.

At 11:14 AM 8/31/2003 +0200, Peter Edstrom wrote:
>Hello!
>
>Procmail has of some reason stopped filtering my linux-newbie mail. It
>occured as I cleaned up my .procmailrc-file. This is how the
>linux-newbie entry looks like:
>
>   :0
>   * ^X-Mailing-List:.*linux-newbie@vger.kernel.org
>   IN.linux-newbie
>
>I've also tryed with the following condition just before the
>X-Mailing-List one, but without success:
>
>   * ^(To|Cc):.*linux-newbie@vger.kernel.org
>
>I have tons of mailing list filters that all work with this principle,
>but this one don't. Does anyone have any ideas on what's causing the
>problem?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
