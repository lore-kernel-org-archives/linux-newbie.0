From: Peter <heisspf@skyinet.net>
Subject: Re: Bash will not start in Terminals
Date: Tue, 15 Mar 2005 15:42:44 +0800
Message-ID: <200503150742.j2F7giJW000503@skyinet.net>
References: <5.1.0.14.1.20050310183928.0293ee08@celine>
Mime-Version: 1.0
In-Reply-To: Your message of "Thu, 10 Mar 2005 18:55:46 PST."
             <5.1.0.14.1.20050310183928.0293ee08@celine> 
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hi,

Peter said:
> Slackware10 kernel 2.4.26
> >For me unknown reason suddenly bash will not
> start in terminals. 

The reason was that I had made a new slackware installation in which then in 
the /etc/passwd under my user name at the end of the line there was no 
:/bin/bash as it used to be.

I found it out when I added an arbitrary user in which then again bash was not 
started in the terminals. Again on his passwd line there was no :/bin/bash.

So it had nothing to do with me getting too old for Linux. It's a new 
"gimmick" in slackware which one has to find out first.

Regards


-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
