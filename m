From: "mike" <ruler@isolate.net>
Subject: Re: Network and Apache Question
Date: Tue, 21 May 2002 22:37:11 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <00f401c20139$93ce2700$0201a8c0@ws1>
References: <200205220156.g4M1uKDn028220@smtp-server6.tampabay.rr.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Most cable modem ISP's block access to port 80.  What you might be able to
do is have a port redirecter on www.kc4hw.homelinux.net:80 point to
yourcablemodem:8080, or just change the port to 8080 and tell people about
it with that port addition.  I tried telneting to your ip via port 80 and
"no route to host", which means its being dropped on the border routers.


Mike
----- Original Message -----
From: "Jim Johnson" <jim@kc4hw.net>
To: <linux-newbie@vger.kernel.org>
Sent: Tuesday, May 21, 2002 9:56 PM
Subject: Network and Apache Question


> Hello Everyone,
>
> I am still unable to access the apache web server
> http://www.kc4hw.homelinux.net via the internet.  I am able to access the
> apache web server from the lan, so the server is running.
>
> My configuration is Red Hat 7.2, kernel 2.4.18, Apache 1.3.24, using a
> Linksys BEFSR81 router/firewall.  The Linux box has been assigned
> address 192.168.1.114 by the Linksys device and I have enabled this
> address in the Linksys DMZ Host, which is suppose to make this machine
> visible from the internet.
>
> I have an amateur radio application running that is visible via telnet,
> however, I have not been able to access apache via the internet.
>
> Can someone help with this?
>
>
>
>
> Jim Johnson, Melbourne, Florida
> jim@kc4hw.net - http://www.kc4hw.net
> DXCluster RF Connection: 144.97
> Telnet://kc4hw.homelinux.net:8000
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
