From: Ray Olszewski <ray@comarre.com>
Subject: Re: Displaying 'ping' data with 'tcpdump' ?
Date: Fri, 13 Aug 2004 13:15:01 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040813130631.01f9fd58@celine>
References: <5.1.0.14.1.20040813093835.01fe0dc0@celine>
 <5.1.0.14.1.20040813093835.01fe0dc0@celine> <411D1AAD.8020700@gelm.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <411D1AAD.8020700@gelm.net>
References: <5.1.0.14.1.20040813093835.01fe0dc0@celine>
 <5.1.0.14.1.20040813093835.01fe0dc0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 03:46 PM 8/13/2004 -0400, chuck gelm wrote:
>Hi, Everyone:
>
>  I am having difficulty displaying the pattern data
>inside a 'ping' packet using 'tcpdump'.
>
>  I am sending a periodic 'broadcast' padded with 'data':
>ping -f -i 3600 -p 204445204E43385120   #" DE NC8Q "
>
>  I want to display this data on a console.  I am using
>'tcpdump -i eth1 -v -X'
>but this shows too much data/activity.
>
>'tcpdump -i eth1 -v -X port 7'  displays nothing.
>
>Perhaps something other than 'tcpdump' would be more suitable?
>
>1. How can I display only the 'echo request' packets?

         tcpdump icmp[icmptype]=icmp-echo -v -X

>2. How can I display only the 'echo reply'   packets?

         tcpdump icmp[icmptype]=icmp-echoreply -v -X




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
