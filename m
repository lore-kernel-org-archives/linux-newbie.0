From: "Jim Roland" <lists@tcob1.net>
Subject: Re: Port 20 blocked. How to unblock
Date: Tuesday, 13 Aug 2002 03:11:24 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020813_031124__ef070ac7@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


Port 20 is used for the actual data transfer (directory listings, files,
etc) after you have authenticated with port 21 (ftp control).  Port 20 will
not be an open port and will not allow connections until port 21 tells it to
(someone could hijack an active connection if port 20 was open to anything
including a telnet diagnostic connect).


----- Original Message -----
From: "Benny Pedersen" <linux-net@tcob1.net>
To: <linux-newbie@vger.kernel.org>
Sent: Saturday, August 03, 2002 3:02 PM
Subject: Port 20 blocked. How to unblock


> Originally to: Phillip Morgan
>
> Hello Phillip.
>
> 12 Jul 02 16:40, you wrote to all:
>
>  PM> I tried to telnet to port 21 and found that works, but telnet'ing to
>  PM> port 20 (ftp-data), fails (connection refused).
>
> fix with using passive ftp, only non passive ftp use port 20
>
> and dont use host.* use proftpd.conf, man proftpd.conf find limith
>
> and make AllowStoreRestart on to enable resume upload, and have
AllowStoreRestart off in your anon ftp config
>
> ask if you still need help
>
>  PM> So why would a connect to port 20 be refused?
>
> ask your isp :-)
>
> Benny
>
> <-> Gateway Information.
> This message originated from a Fidonet System (http://www.fidonet.org)
> and was gated at TCOB1 (http://www.tcob1.net)
> Please do not respond direct to this message but via the list
>
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




<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
