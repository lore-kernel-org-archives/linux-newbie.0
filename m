From: "James Turnbull" <james@lovedthanlost.net>
Subject: Re: Squid only on eth1
Date: Tue, 27 Jan 2004 13:50:57 +1100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <010601c3e480$63c445e0$3401a8c0@iih.usyd.edu.au>
References: <4011C8740000069B@mail-bcm02.alestra.net.mx>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie <linux-newbie@vger.kernel.org>

> Hi:
>
> I have 2 eth devices in my Linux box, I want that all squid traffic go
throw
> eth1 an not eth0, how do I configure it?
>

If they have seperate IP addresses you can force squid to use a specific IP
address in the squid.conf file.  Look at the http_port config option and
specify an IP, i.e. http_port 10.0.0.5:3128

Regards

James


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
