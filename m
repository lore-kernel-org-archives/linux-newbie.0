From: Ray Olszewski <ray@comarre.com>
Subject: Re: Can't Print
Date: Thu, 29 Apr 2004 22:10:57 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040429220345.01efcb48@celine>
References: <20040430040015.640AF333CC@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040430040015.640AF333CC@heisspf>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:00 PM 4/30/2004 +0800, Peter H. wrote:
>Hi,
>
>On a standalone PC with no modem and therefore no Internet connection and
>RH 9.0 installed I am unable to get the printer to work.
>
>On booting starting lpd I get:
>
>--localhost Get_local_host: 'localhost' IP address not available!
>
>The same message I get when trying to print a test page in printer-config.
>
>I configured a simulated Internet connection, the problem remains.
>
>I am an old RedHat hand so-to-speak and this is the first time I can't get 
>the
>printer to work. On all previous installations the PCs had modems attached.
>
>Could this be the problem that there is none. Would be strange so.
>
>Thanks for any suggestions.


Well ... your question makes me realize that I've never, in 10 years, set 
up a Linux system that did not have a network connection (LAN or dialup). 
But ... lpd is a daemon that listens on TCP port 515, so it does need a 
TCP/IP stack running. Since you "configured a simulated Internet 
connection", I infer you are running a kernel with the necessary TCP/IP 
support.

Do you have an "lo" interface, and is it configured as 127.0.0.1/8 ?

Do you have an entry in /etc/hosts that resolves "localhost" to that 
address ... that is, a line like --

         127.0.0.1       localhost

Just fishing here, really. You probably skipped some required step, but if 
it isn't one of the ones I mention, I cannot think what ti might be.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
