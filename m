From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Port 20 blocked. How to unblock
Date: Mon, 12 Aug 2002 20:36:35 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02081220363502.00319@unix.pa3gcu>
References: <MSGID_110=3a300=2f15_3d4c1bce@fidonet.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <MSGID_110=3a300=2f15_3d4c1bce@fidonet.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Benny Pedersen <linux-net@tcob1.net>, linux-newbie@vger.kernel.org

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
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
