From: Ray Olszewski <ray@comarre.com>
Subject: Re: hiding my hostname
Date: Tue, 06 May 2003 20:26:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030506201353.01eb8ea0@celine>
References: <200305070940.44823.pfheiss@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030507030656.94940.qmail@web10701.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:06 PM 5/6/2003 -0700, Jesse Armand wrote:
>I want to find out how to hide my hostname or IP
>address,
>from viewing by other people by using who, finger, or
>w,
>while i was connected to a server via remote login
>(like ssh or telnet).

If you connect to a remote server, by any means, there is no way to hide 
from that server the apparent IP address you are connecting from. That is, 
the remote server will either know the IP address of the host you are 
connecting from, or the host you are connecting through (in the sense of, 
say, a NAT'ing firewall or perhaps a proxy server of some sort). It has to 
know that or it cannot maintain the connection.

Technically, there is no way for the remote server to know your actual 
hostname, in the sense of whatever your host happens to have in the file 
/etc/hostname . But if it can do a reverse-lookup of your IP address, it 
can, and usually will, know a FQN associated with your host.

In principle, if you have root privileges on the remote server, you can 
modify the applications who, finger, and w, so they do not display the FQN 
or IP-address data. How to edit and recompile these apps is not really a 
beginner question, so I won't go into detail here (and anyway, I don't know 
the source for any of these apps well enough to answer at that level 
without doing some work). But there is nothing you can do on the host you 
are connecting *from* to accomplish what you want.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
