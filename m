From: mike <mike@kevino.org>
Subject: Re: top and ps -Al
Date: Sun, 10 Oct 2004 10:22:52 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41696FEC.3020106@kevino.org>
References: <20041008051230.18104.qmail@web52902.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041008051230.18104.qmail@web52902.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



Ankit Jain wrote:
> hi
> 
> if somebody knows the difference b/w /PRI of both
> these commands because both give different results
> 
> ps -Al
> & 
> top
> 
> as per priority rule we can set priority upto 0-99 
> 
> but top never shows this high priority
> 
> thanks
> 
> ankit
> 
Hello Ankit,

I use top mostly. Tried your two commands and saw what the results
were. I am a newbie so I cant explain why myself but I am also
curious. I noticed that if you run the "ps -Al" command with the
-c output control, "ps -Alc" the priority results are much closer to
top. From the ps manpage (-c different scheduler info for -l option)

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
