From: Ray Olszewski <ray@comarre.com>
Subject: RE: configuring sendmail to cope with AOL
Date: Fri, 23 May 2003 07:17:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030523070551.01eb8a90@celine>
References: <200305230143.h4N1hhRp019819@hartford-hwp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BKEGKPICNAKILKJKMHCAGELBDBAA.Riley@Williams.Name>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:06 AM 5/23/2003 +0100, Riley Williams wrote:
>Hi Haines.
>
>  > Yes. Each time I connect, I have a different address. I configure
>  > my address to be 0.0.0.0.
>
>Is that the address you tell sendmail to use? If so, that's probably
>the real problem with AOL refusing to permit your emails.
[remainder deleted]

Good thought, Riley. I don't think that is what he is doing, but you may 
have hit on the real problem nonetheless.

If you look at the Received: headers, you'll see that Haines purports to be 
sending mail from hartford-hwp.com, and that the actual IP address, being 
assigned dynamically, changes. For example:

>Received: from 69.0.54.70.adsl.snet.net ([69.0.54.70]:6042 "EHLO
>         hartford-hwp.com") by vger.kernel.org with ESMTP id S263571AbTEWBbI
>         (ORCPT <rfc822;linux-newbie@vger.kernel.org>);

But the IP address hartford-hwp.com resolves to is (or seems to be) static. 
In any case, it is different from his actual IP address, and a reverse 
lookup on it does not succeed. To wit:

>ray@kuryakin:~$ host hartford-hwp.com
>hartford-hwp.com        A       64.227.154.66
>ray@kuryakin:~$ host  64.227.154.66
>64.227.154.66 does not exist, try again

This means his outgoing mail will fail the spoofed-source test that is 
commonly applied by MTAs to SMTP connections.

That said, going through his ISP's e-mail relay will fix that problem too.

(BTW, he gets by with this DNS, I think, because hartford-hwp.com has a 
functional MX entry. This is also why i was surprised to see Haines say 
that his address is dynamic ... I'd checked the DNS listing and the whois 
record, but not the Received: headers.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
