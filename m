From: Ray Olszewski <ray@comarre.com>
Subject: Re: Procmail won't filter linux-newbie mail
Date: Mon, 01 Sep 2003 08:30:17 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030901081714.01f8d3a8@celine>
References: <5.1.0.14.1.20030831224453.01f41838@celine>
 <20030831091426.GB2273@linux>
 <5.1.0.14.1.20030831224453.01f41838@celine>
 <20030901144243.GA1048@linux>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030901144243.GA1048@linux>
References: <5.1.0.14.1.20030831224453.01f41838@celine>
 <20030831091426.GB2273@linux>
 <5.1.0.14.1.20030831224453.01f41838@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Just a few specific, selective comments.

At 04:42 PM 9/1/2003 +0200, Peter Edstrom wrote:
[...]
> > 3. From reading over the procmailrc page, this rule block might work 
> better
> > than what you are trying:
> >
> >         :0
> >         * ^TO:.*linux-newbie@vger.kernel.org
> >         IN.linux-newbie
>
>I've seen this "type" of rule before, but I'm a little confused. Why
>is "TO" written with upper-case and not as "To", which is how the
>headers appear to be spelled?

If you read over the man page for procmailrc, you will see that TO is a 
special, semi-wildcard designator that will expand to match To:, Cc:, and a 
bunch of other candidates. The man page covers the details better than I 
can in an e-mail.

>  >  4. Are you sure you have quoted the rules you are using EXACTLY? I ask
> > because there were several small errors (spelling, grammar, diction) in
> > your message, so I do not want to assume you got (for example) the
> > whitespace components of the rules transcribed properly.
>
>What do you mean? Is my text formatted in a weird way, or are you just
>complaining about my bad English (I'm from Sweden) ? ;-)

I wasn't complaining, just explaining why I asked. For a non-native 
speaker, your English is astoundingly good ... so much so that I surmised 
that you were a native speaker writing carelessly, rather than an ESL 
writer making a occasional, minor mistake (e.g., "tryed" for "tried"). In 
any case, when I see small errors in the text of a message, whatever the 
reason, I always wonder if there are similar errors in the critical parts 
of the same message ... in this case, the parts where you quoted the rules. 
Hence my actual question.

[...]
>Before it looked like this:
>
>   :0:
>   * ^To:.*linux-newbie@vger.kernel.org
>   IN.linux-newbie
>
>   :0:
>   * ^CC:.*linux-newbie@vger.kernel.org
>   IN.linux-newbie

This certainly suggests that your problem relates to trying to use X- 
headers to filter. I'm unclear on why X- headers would not work -- if you 
look at "man procmailex", you should see at least one example that uses an 
X- header -- but it is the only interpretation I can think of.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
