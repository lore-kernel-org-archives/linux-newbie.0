From: Szekely-Benczedi Endre <bencze@science.uttgm.ro>
Subject: Re: Securing my box
Date: Fri, 15 Nov 2002 14:07:48 +0200 (EET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0211151405310.26537-100000@davos.science.uttgm.ro>
References: <200211150619.49278.1stflight@ameritech.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211150619.49278.1stflight@ameritech.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org
Cc: 1stflight@ameritech.net


	As far as I know this is the way it should be, I mean
you closed the access from outside; but not from your server.
So someone from outside cannot connect to them, but you, from
a shell on the server, can, of course...
Or did I misunderstood the question?

Greetz,
Bencze.

On Fri, 15 Nov 2002, 1stFlight wrote:

> I recently had a friend port scan me as a test of my ip_tables based firewall
> And like I wanted he discovered there were no ports open. However if I do a 
> "netstat -a | grep LISTEN" I see
> 
> tcp        0      0 localhost.localdom:1024 *:*                     LISTEN
> tcp        0      0 *:printer               *:*                     LISTEN
> tcp        0      0 *:sunrpc                *:*                     LISTEN
> tcp        0      0 *:x11                   *:*                     LISTEN
> tcp        0      0 *:ssh                   *:*                     LISTEN
> 
> 
> What's going on here? Did I mess up my config? Thanks!
> 
> 													Darryl
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
