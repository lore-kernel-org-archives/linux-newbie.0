From: Marco Cova <marco.cova@studio.unibo.it>
Subject: Re: sending data on a socket followed by a close
Date: Fri, 29 Aug 2003 00:44:30 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030829054429.GA1453@smith.cs.ucsb.edu>
References: <20030828003552.78024.qmail@mail.com> <3F4EDE92.8020002@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <3F4EDE92.8020002@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stephen Samuel <samuel@bcgreen.com>
Cc: Lee Chin <leechin@mail.com>, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org

Il giorno Thu, Aug 28, 2003 at 10:03:14PM -0700, pare che Stephen Samuel abbia scritto:
> Rather than using close, try calling shutdown (2)...
> (dunno if it will work).
> 
> If that doesn't work, then use the socket option  SO_LINGER
> 
> SO_LINGER     When enabled, a close(2) or shutdown(2) will  not  return
>               until all  queued  messages for the socket have been
>               successfully sent or the linger timeout has  been  reached.
>               Otherwise,  the  call returns  immediately  and the closing
>               is done in the background.
> 
> man 7 socket
>   for more info
> 
> Lee Chin wrote:
> >Hi,
> >I am trying to send 500K on a asynchronous socket and after I've written 
> >all my data, I want to close the socket.
> >
> >So I send data in a loop, and between calls to "write" I select on the 
> >filedescriptor till it is writable again and send more data.
> >
> >I continue this untill I have no more data to send.
> >
> >At the end, after sending all my data, I "close" the socket.
> >
> >However, the client sees a TCP RST packet and only receives partial data.
> >
> >What am I doing wrong?  I though that the close would actually kill the 
> >socket after all the data has been sent

RST on close is what you get if you set the SO_LINGER option for the
socket with l_onoff = 1 and l_linger = 0 (and the socket reference
count has dropped to 0).

You can find a complete description of the different choices you have for
closing a connection in Stevens, "UNIX Network Programming", pag
187-191.

HTH,
Marco

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
