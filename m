From: Richard Adams <pa3gcu@zeelandnet.nl>
Subject: Re: Can't connect to Internet
Date: Sat, 28 Aug 2004 09:30:22 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200408280930.22863.pa3gcu@zeelandnet.nl>
References: <20040828022115.8392B1C645@heisspf>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040828022115.8392B1C645@heisspf>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter <heisspf@skyinet.net>, linux-newbie@vger.kernel.org

On Saturday 28 August 2004 04:21, Peter wrote:
> On Slackware10 suddenly I cannot connect to the Internet with my major ISP
> skyinet.net. I can login, however, cannot fetch or send mail nor open a web
> page. I can ping successfully with no package loss.

I bet you meant "packet loss", ok joke over, now i am not an expert at ppp but 
a bell rings here when you say i can ping via ppp0 but not connect, it sounds 
like a domainname problem to me, check that  /etc/resolv.conf is getting 
updated by skynet, check the nameserver IP#'s for skynet and if need be add 
them in by hand.

nameserver xxx.xxx.xxx
search skynet.net

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
