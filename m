From: Ray Olszewski <ray@comarre.com>
Subject: Re: Who is listening on port xxx?
Date: Wed, 28 Jan 2004 11:54:03 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040128115150.02053e40@celine>
References: <4011C87400001C22@mail-bcm02.alestra.net.mx>
 <4011C87400001C22@mail-bcm02.alestra.net.mx> <1075317421.25428.1.camel@science>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1075317421.25428.1.camel@science>
References: <4011C87400001C22@mail-bcm02.alestra.net.mx>
 <4011C87400001C22@mail-bcm02.alestra.net.mx>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

At 08:17 PM 1/28/2004 +0100, Jens S=FClwald wrote:
>Am Mi, den 28.01.2004 schrieb rgomez@bancomer.com um 19:56:
> > Hi, here's the network newbie again...
> >
> > How or Where can I find which process is listening on specific port=
?
>fuser -v -n tcp <port>
>or
>fuser -v -n udp <port>

You might also find various options in "netstat" helpful, depending on=20
exactly what information you are looking for. For example, try running

         netstat -lp

to see if its output is helpful to you.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
