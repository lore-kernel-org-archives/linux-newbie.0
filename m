From: Bill Pleasants <Pleasants@myfreei.com>
Subject: Re: Printer error
Date: Tue, 17 Dec 2002 22:25:24 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DFFEAA4.5020904@myfreei.com>
References: <5.1.0.14.1.20021216085528.02134570@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:

> You don't give us much to go on, but since the problems seem to be 
> with name resolution, I'd suggest you tell us the details of your 
> system as they relate to that.
>
> First is your networking setup. Are you connected to a LAN or directly 
> to the internet? (I guess you must be if you are using MapQuest.) If 
> so, how?

This is a LANless computer connected to the internet by a 56K modem.

>
> More immediately, how does your system do name-to-address resolution? 
> Does it rely on /etc/hosts? If so, what are the contents of that file? 
> Or does it use a nameserver? If so, is it accessable? And what are the 
> contents of the /etc/resolv.conf file? 

I have some notion of what name-to-address resolution is for the 
internet but not what it is for the Linux OS.  /etc/hosts contains:
    "# Do not remove the following line, or various programs
    # that require network functionality will fail.
    127.0.0.1    localhost.localdomain   

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
