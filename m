From: Sven Schuster <schuster.sven@gmx.de>
Subject: Re: Linux Networking problem...please help..
Date: Wed, 16 Jul 2003 17:00:16 +0200
Sender: linux-net-owner@vger.kernel.org
Message-ID: <3F156880.8070109@gmx.de>
References: <20030716122034.88944.qmail@web21001.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
In-Reply-To: <20030716122034.88944.qmail@web21001.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Sanjay Arora <skpobox@yahoo.com>
Cc: linux-net@vger.kernel.org, linux-newbie@vger.kernel.org


Hello,

maybe you could try to turn off send_redirects??

echo "0" >/proc/sys/net/ipv4/conf/all/send_redirects
echo "0" >/proc/sys/net/ipv4/conf/eth0/send_redirects

Maybe you'll have to write eth0 instead of eth0, depending on
the interface for the internal network.

Hope this helps

Sven
 


Sanjay Arora wrote:

>Netmask is 255.255.255.0 on all machines.
>
>Point is that the WinXP machine is being given a
>redirect by the Linux firewall and that is being
>ignored, either due to inability of WinXP or some
>misconfiguration by me.
>
>Sanjay.
>
>--- Stephen Samuel <samuel@bcgreen.com> wrote:
>
>>What are the netmasks for the two machines?? If you
>>give them a /18
>>(or a /16) netmask and the associated broadcast
>>addresses, then they'll
>>know to just talk directly to each other.
>>
>>Of course, I barely trust Windows to understand
>>netmasks, but it
>>should be OK -- far better than trying to get it to
>>accept ICMP
>>redirects.
>>
>>
>>
>  
>

