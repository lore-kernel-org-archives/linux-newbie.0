From: Ray Olszewski <ray@comarre.com>
Subject: Re: Linux Networking problem...please help..
Date: Wed, 16 Jul 2003 07:06:10 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030716065640.01fadea8@celine>
References: <3F1332FC.8080903@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030716122034.88944.qmail@web21001.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 05:20 AM 7/16/2003 -0700, Sanjay Arora wrote:
>Netmask is 255.255.255.0 on all machines.
>
>Point is that the WinXP machine is being given a
>redirect by the Linux firewall and that is being
>ignored, either due to inability of WinXP or some
>misconfiguration by me.
[old stuff deleted]

As I said in my prior response, redirects are commonly (though not always) 
ignored. Redirects are a way of spoofing, thus a security hole (even though 
they also have legitimate uses, as in your case). That XP rejects redirect 
instructions is quite reasonable.

(Are you sure that your Linux client on the LAN is receiving and acting on 
the router's redirect message? You haven't said. In any case, if it is on 
network 192.169.250.0/24, and has default gateway 192.168.200.1, as your 
earlier message seemed to say, it has a more elaborate routing table than 
the WinXP host ... either a route to 192.168.200.0/24 or a static route to 
192.168.200.1/32.)

In any case, if this is the "point" of your query, is it not better made on 
a Windows XP list than a pair of Linux lists? (BTW, no one else has 
mentioned this, but cross-posting of this sort is usually considered 
discourteous.) Both Linux hosts on the LAN seem to be functioning correctly 
(at least as far as I can tell from your description).

The only solution I can suggest is not to use the redirect trick to enable 
connectivity. Instead, give the WinXP host a proper routing table that 
tells it that it has a direct route to network 192.168.250.0/24.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
