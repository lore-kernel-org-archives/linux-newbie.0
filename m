From: Ray Olszewski <ray@comarre.com>
Subject: Re: Spam from linux-newbie
Date: Wed, 10 Mar 2004 07:50:57 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040310073443.02042150@celine>
References: <Your message of "Tue, 09 Mar 2004 07:05:59 PST." <5.1.0.14.1.20040309064723.01f8cf48@celine> <20040310091756.16C8ED84C@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040310091756.16C8ED84C@heisspf>
References: <Your message of "Tue, 09 Mar 2004 07:05:59 PST." <5.1.0.14.1.20040309064723.01f8cf48@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:17 PM 3/10/2004 +0800, Peter wrote:
[...]
>The spammer continuously changes the hostname and uses somewhere along 
>hotmail
>and that isp showing in  Message-Id:.

I don't know what you mean by "uses" here. Do you understand the concept of 
spoofing (forging) headers in e-mail?

>So the spammer must continuously register with this list under continuously
>changing names.

"register with this list"? Does the list now accept postings only from 
members? News to me if it does. And I've seen traffic within the past few 
days (a misdirected "subscribe" message sticks in my mind) that surely came 
from non-subscribers.

>I sent an abuse to hotmail, however, since it is not from them they can't do
>anything they said. To send an abuse to the isp appearing in the  Message-Id:
>would most likely be futile since by the name of it it must be the spammers
>own isp. (see Jim's mail)

Message-Id: is just one more header, and ALL normally visible headers are 
easily forged. Check the first (lowest) Received: header, do a traceroute 
to it, then do a reverse lookup of the last address before the destination 
... and you *might* find the identity of the true originating ISP. 
(Received: headers can be spoofed too, but at least some of them have to be 
real, since they are added by the *receiving* MTAs.) Even then, it will 
(usually) do you no good, since a lot of SPAM originates with ISPs who are, 
at best, indifferent to it.

>The spam Jim cited and your example seem to come from the same source as my
>spam which I had a little problem of filtering out due to its chameleon style
>posting.

I don't know why you think that they come from the "same source". I haven't 
seen the one or ones you've received, but the one Jim posted info on, and 
the two I mentioned, all originate at different IP addresses. The two I 
found had quite different content (as did Jim's, probably, to judge from 
the Subject: line it contained). My own guess is that Jim and I flagged 
messages from 3 different SPAMmers.

Bottom line: I think you are wrong in seeing this as the result of "a" 
SPAMmer. What I think you (we all) are seeing is the trickle of SPAM that 
makes it through the SPAM filter the vger runs. I looked at it once, more 
than a year ago, and it looked pretty good to me ... so I'm betting that it 
is catching a lot of SPAM for us.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
