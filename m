From: Ray Olszewski <ray@comarre.com>
Subject: Re: question regarding GPL
Date: Thu, 25 Sep 2003 23:11:30 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030925230149.01f1e358@celine>
References: <3F73AD8A.6010301@hq.ntsp.nec.co.jp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3F73AD8A.6010301@hq.ntsp.nec.co.jp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:07 AM 9/26/2003 +0800, ronkhu wrote:
>Hi!
>
>Is it safe to use GPL'ed api's in ur code? safe in the sense that one is 
>not required to attach the GPL agreement in the code header..
>
>A fellow programmer raised it once, saying that we need to refrain from 
>using GPL'ed api's because ultimately the code will become GPL'ed too..
>
>But i thought the code only becomes(or is required to be) GPL'ed  when it 
>contains modifications of  gpl'ed code... or direct variations of it?
>
>I thought it was safe to use GPL api's when u use them only as separate 
>imported modules(without mods)?

The questions you ask are legal questions, and you do not even indicate 
what country's law you are asking about. Only an attorney familiar with 
both the GPL and your country's laws can give informed answers to your 
questions. We are a bunch of techies here and, while we may have opinions 
about what the GPL means, no one here (to my knowlege) is qualified to give 
you legal advice.

I believe that if you go to www.gnu.org and look around, you will find a 
link to a page in which someone involved with FSF discusses the questions 
you asked and offers his or her (or, perhaps, FSF's official) opinion on 
how the GPL should be interpreted in these situations. I suggest you look 
for a page that urges programmers of shared libraries to license them under 
the GPL rather than the LGPL, and that explains why the difference matters.

One technical, not legal, thing: you need to be more clear than you are 
about what you are asking about. The term "api" is not synonomous with 
"imported modules", and I am guessing that when you refer to "GPL api's" 
you mean what are commonly called shared libraries (libraries that other 
code links to only at runtime). In any case, you need to be clear as to 
what you are asking about.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
