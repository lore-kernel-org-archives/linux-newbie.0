From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: messages in /var/log/
Date: Wed, 4 Aug 2004 07:42:38 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200408040742.38045.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.44.0408032211350.1084-100000@legolas.personal.engin.umich.edu>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0408032211350.1084-100000@legolas.personal.engin.umich.edu>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Karthik <karthikv@Alum.Dartmouth.ORG>
Cc: linux-newbie@vger.kernel.org

On Wednesday 04 August 2004 04:15, Karthik Vishwanath wrote:
> I have a whole load of entries that look like:
>
> Aug  3 14:48:38 gandalf -- MARK --
> Aug  3 15:08:38 gandalf -- MARK --
> ...

syslogd puts it in /var/log/messages, see 'man syslogd'
The -m option is supposed to turn it off, i remember years ago it was not 
possable to turn it off completly, as to it working now i have not tryed.

>
> These are repeated every 20 minutes. How can I determine where are they
> coming from and what they mean?
>
> Thanks,
>
> -K

-- 
If the Linux community is a bunch of thieves because they
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
