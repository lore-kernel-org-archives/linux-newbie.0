From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: su fails
Date: Mon, 14 Jul 2003 20:23:43 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307142023.43039.pa3gcu@zeelandnet.nl>
References: <5.1.0.14.1.20030714080202.01ef9e68@celine> <oprsa696n7hmmv6x@smtp.arrakis.es> <oprsbalrywhmmv6x@smtp.arrakis.es>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <oprsbalrywhmmv6x@smtp.arrakis.es>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew Langdon-Davies <ald2@arrakis.es>, linux-newbie@vger.kernel.org

On Monday 14 July 2003 19:52, Andrew Langdon-Davies wrote:
> >> su: Authentication failure
> >> Sorry.
> >> autovcr@kuryakin:~$
> >
> > It says only "Sorry"
> >

NO it does not, it says, "Authentication failure" and then sorry.

I have encoured a simalar problem years ago, my problem was caused by a disk 
that was 100% full.
It may seem strange but AFAI see it, if the disk is full syslog(d) cannot 
write to /var/log/syslog and rejects connections, at least that is what i 
belive happend to me.

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
