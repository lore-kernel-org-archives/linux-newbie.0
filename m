From: "David Lane" <jaypooh3@bellsouth.net>
Subject: Re: Cable Modems??
Date: Mon, 9 Sep 2002 03:11:59 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <002401c257d0$312fb760$1d1c4ed8@POOHBEAR2>
References: <20020908130053.A417@lnx2.w8mch.ampr.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@iceweb.net, linux-newbie@vger.kernel.org

Ping is definitely NOT obsolete.Before I speculate too much you should post
the IP address you are trying to ping or telnet to.Most cable and DSL modems
contain their own IP's that are in the private range.If your trying to ping
or telnet to one of those you can give it up,the user can but you on the
outside can't.You can only ping or telnet to his public IP that he is
assigned when he connects.
    XP does have the capability to setup an incoming connection for VPN but
unless your son has a static IP(not likely these days)this will be more of a
hassle than it's worth as his IP  probably changes at least every three days
even if he is connected 24/7.Have your son run "ipconfig" in a DOS window
and that will/should give you his public IP.
   Send the IP you were trying to ping and I'll try to give you a better
answer.

                            David Lane

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
