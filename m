From: Jude DaShiell <jdashiel@shellworld.net>
Subject: Re: Netgear FA312TX - Is it supported?
Date: Sun, 20 Oct 2002 01:29:11 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.BSF.4.44.0210200127020.26747-100000@server1.shellworld.net>
References: <200210190915.03651.Adam@Luchjenbroers.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210190915.03651.Adam@Luchjenbroers.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Adam Luchjenbroers <Adam@Luchjenbroers.com>
Cc: linux-newbie@vger.kernel.org

You need to get the netdrivers package from
ftp://ftp.scyld.com/pub/networks/ once you've got that, install and
compile it.  Once done, modprobe natsemi should wake up that ethernet card
for you.



On Sat, 19 Oct 2002, Adam Luchjenbroers wrote:

>
> Just want to know if this card is supported.
>
> --
> "Well you know, C isn't that hard, void (*(*f[])())() for instance declares f
> as an array of unspecified size, of pointers to functions that return
> pointers to functions that return void... I think" - Sigurdur Asgeirsson
>
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
