From: "Eckhardt, Rodolpho H. O." <reckhardt@mandic.com.br>
Subject: Re: Question about TCP/IP
Date: Tue, 25 Feb 2003 10:03:02 -0300 (BRT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <62694.200.136.52.249.1046178182.squirrel@www.mandic.com.br>
References: <20030224202346.54528.qmail@web40406.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030224202346.54528.qmail@web40406.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: cba20032002@yahoo.com
Cc: linux-newbie@vger.kernel.org

Hello Mikey,

> Is
> there any good way to isolate/identify what is causing
> this?

It could be many things. From congestion of the network to bad programm=
ing. If you are
sure the problem is with the net, discover if it's half or full-duplex.=
 If it's
half-duplex, go to your hub or switch and discover if there are too man=
y collisions
going on (there should be a yellow or orange light flashing everytime a=
 collision
happens).

Try using a sniffer or a traffic analyzer to find out how much bandwidt=
h is being used.

If there's enough bandwidth left, there are no collisions going on, it =
could be a
computer set up problem (MTU etc).

> What would happen when the line is cut during
> transmission? IS there any particular timeout error
> need to be looked for?

No. If the line is cut during a transmission, the receiver won't be abl=
e to check things
like checksums with an incomplete packet. So, it will drop it.

(I'm not sure if it won=B4t send out an icmp message with parameter pro=
blem. But I think
not.)

Rodolpho
--=20
Rodolpho H. O. Eckhardt
reckhardt@mandic.com.br
Cel: 11 9126-9107


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
