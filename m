From: "pa3gcu" <lists@tcob1.net>
Subject: Re: Port 20 blocked. How to unblock
Date: Monday, 12 Aug 2002 21:36:35 +000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <NOMSGID_7223=3a9750=2f200_020812_213635__b3f8733a@fidonet.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Originally to: All


On Thursday 01 January 1970 00:00, Benny Pedersen wrote:
> Originally to: Phillip Morgan
>
> Hello Phillip.
>
> 12 Jul 02 16:40, you wrote to all:

Today its; Aug 12 and you posted this message on Saturday 03 Aug, seems 
something is wrong with your date(s) anyway most of the mail is snipped.

>  PM> So why would a connect to port 20 be refused?
>
> ask your isp :-)

Huuh? no ftp program i know of will "accept connections" on port 20, unless i 
suppose you tell it to via some or other config file, but what would be the 
point of doing that.

On any system simply try;

 ftp localhost 20

If you get anything other than connection refused then you have one wierd 
system.

Port 21 accepts incomming ftp connections, port 20 is/can be used for 
data-transfers.

>
> Benny

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
