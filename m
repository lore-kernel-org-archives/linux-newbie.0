From: Ray Olszewski <ray@comarre.com>
Subject: Re: Samba issues
Date: Mon, 17 Mar 2003 10:20:31 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030317101346.01ef5e10@celine>
References: <1047900712.3e75b228b4b8b@mail.rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030317180721.70272.qmail@web13403.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Abhijit Vijay <abhijit_v@yahoo.com>, linux-newbie@vger.kernel.org

At 10:07 AM 3/17/2003 -0800, Abhijit Vijay wrote:
>Hi All,
>
>I came to know from some of my labmates who did a
>performance test, that Linux Samba access is
>*significantly* slower (order of three times) than
>Windows SMB. Is there any reason why this could be tru
>and can this problem be fixed at all?

I can think of any number of reasons as to why it *could* be true. Better 
understanding, though, requires better information, such as ...

1. What version of Windows versus what versions of Linux and Samba?

2. Are there any hardware differences between the test servers? (For that 
matter, is the comparisone even between servers and not clients?) Any load 
differences? Any LAN differences?

3. What do you mean by "access" and "slower"? Does it mean, for example, 
that that actual bps speed of a file transfer differs between the two 
setups by a factor of three? Or that it takes 3 times as long to get a 
listing of available hosts? Or are we even talking about file access (and 
not print queueing)?

I don't notice a similar performance difference here, but that's based just 
on casual observation, not controlled tests. I'd be interested in the 
details of a controlled test, so please do follow up with more information.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
