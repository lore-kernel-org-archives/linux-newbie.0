From: Sven Schuster <schuster.sven@gmx.de>
Subject: Re: Linux Networking problem...please help..
Date: Wed, 16 Jul 2003 17:16:10 +0200
Sender: linux-net-owner@vger.kernel.org
Message-ID: <3F156C3A.7050607@gmx.de>
References: <20030716122034.88944.qmail@web21001.mail.yahoo.com> <3F156880.8070109@gmx.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
In-Reply-To: <3F156880.8070109@gmx.de>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Sanjay Arora <skpobox@yahoo.com>
Cc: linux-net@vger.kernel.org, linux-newbie@vger.kernel.org

Sven Schuster wrote:

>
> Hello,
>
> maybe you could try to turn off send_redirects??
>
> echo "0" >/proc/sys/net/ipv4/conf/all/send_redirects
> echo "0" >/proc/sys/net/ipv4/conf/eth0/send_redirects
>
> Maybe you'll have to write eth0 instead of eth0, depending on


Ouch...sorry, of course I mean eth1 or eth2 or what interface your
internal network is running on ;-)

> the interface for the internal network.
>
> Hope this helps
>
> Sven
>
>

