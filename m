From: "Korosi Akos" <korosiakos@mailbox.hu>
Subject: Re: ppp0 (urgent) success
Date: Sat, 20 Jul 2002 15:22:09 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020720132209.18364.qmail@web2.mailbox.hu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Newbie <linux-newbie@vger.kernel.org>

Hi Chuck and Ray!

I have succeeded!!

Chuck, ppp module was OK, about the modem parity I don't know if it is a
big
problem, but I didn't changed nothing about it yet, I'll see later about
it, but
thanks your response!

Ray wrote:

> ... since you keep bringing Ethernet cards up, I guess you don't
> believe my responses on that score, so I won't discuss 
> Ethernet any more.
I'm sorry, I do belived you, I just asked why was that my other machine
worked good
and this wont, but I know it now!
Because of the other ISP worked other way, and the default kppp settings
worked well
with it. More info about the problem comes below:

I connect now for an other ISP.

> pppd makes the ppp0 interface (first line), but after 30 seconds (last 
> line) it has been unable to complete handshaking with the other end,
so 
> terminates.
...
> at the ISP end (the"bit 7 set to 0" log entry concerns me a
> bit; that 
> sounds like a shell connection, not ppp)?
You are so right!!!
There was a problem with handshaking!
This ISP doesn't wait for a ppp connection but a script connection!
And after I set up the connection with 2 Expect-Send pairs, it was OK!

The other ISP worked with ppp connection so it worked good...

Thank you for your guesses,
thanks a lot,
Akos

p.s: this problem is solved, but another has occured.
     See my next mail...


--------------------------------------------------
http://www.mailbox.hu - Mert levelezni kell...

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
