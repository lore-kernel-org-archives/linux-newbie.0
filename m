From: Ray Olszewski <ray@comarre.com>
Subject: Re: automating a script with dhcp address changes
Date: Tue, 26 Sep 2006 10:48:22 -0700
Message-ID: <451967E6.2020906@comarre.com>
References: <Pine.LNX.4.44.0609261149300.1376-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0609261149300.1376-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Karthik Vishwanath wrote:
> Hello,
> 
> I wanted to run a few tasks each time the IP address on my PC changed. The
> PC connects to the network using DHCP and runs ubuntu (LTS, 2.6.15-26). 
> 
> I noticed that there was a directory called /etc/network/if-up.d that had
> a couple of scripts in them. I was wondering if I could just leave my
> script in that directory and expect it to get executed everytime DHCP
> changes the machines IP?

I believe the answer is no. There is a way to handle it (a script that 
the daemon will run), but the details are specific to the DHCP client 
you are using. The most common ones are pump, dhcpcd, and dhclient, and 
I don't know which of them Ubuntu uses (Debian-Sid offers all 3, plus a 
few others, and even there, I don't know which is most commonly used). 
See which daemon your system runs and check its man page for the 
specifics of its config rules.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
