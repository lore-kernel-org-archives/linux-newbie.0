From: Ray Olszewski <ray@comarre.com>
Subject: Re: Strange Boot Behavior (cont.)
Date: Fri, 22 Aug 2003 08:48:29 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030822083928.02046d70@celine>
References: <5.1.0.14.1.20030822060650.02046eb8@celine>
 <20030822152209.4250.qmail@web13807.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030822152209.4250.qmail@web13807.mail.yahoo.com>
References: <5.1.0.14.1.20030822060650.02046eb8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:22 AM 8/22/2003 -0700, Christopher Swope wrote:
[...]
>Not that new that the former, but fairly new to the latter.  I just
>thought it was considered somewhat rude to reply to someone off-list.

It usually is ... though as with almost anything involving courtesy issues, 
some people probably feel differently.

The reason why this list (and many others) does not use Reply-to: to 
redirect to the list is more technical than that. I haven't looked at this 
issue in years, so I no longer trust my memory of the idetails well enough 
to try to discuss them. Do a Google search on "reply-to munging evil" and 
you will probably find the sites set up by the people who feel strongly 
about this issue.

[...]
> > Have you tried putting the old drive on the Secondary IDE channel?
> > (In
> > practice, this workaround may be your best bet.)
>
>I didn't.  Can one put a hard drive and CDROM on the same channel?  I
>thought that that was not advised.

Well, I don't know what information source you are referring to, but I know 
of no problem with doing this, either in theory or in practice ... I do it 
myself here. There can be timing problems with CD *writing* if you put a CD 
*burner* on the same channel as a hard disk, *AND* you try to burn an iso 
image from that hard disk. But even that isn't a sure problem, just a risk.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
