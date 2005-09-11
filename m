From: pepo <r4mz3z@yahoo.es>
Subject: Re: accept some IP/users deny others
Date: Sun, 11 Sep 2005 00:19:34 -0500
Message-ID: <200509110019.35216.r4mz3z@yahoo.es>
References: <200509022239.21591.r4mz3z@yahoo.es> <200509062115.40029.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200509062115.40029.pa3gcu@zeelandnet.nl>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: pa3gcu@zeelandnet.nl

Hi...
  First thanks for your help and sorry for the time to responce, I was =
so=20
busy.

  I wanna send/receive any mails from any host inside my LAN, but only=20
PC2:192.168.1.2, PC4:192.168.1.4 and PC6:192.168.1.6 can send mails to=20
Internet like smarthost, so the others PCs just inside the LAN.

Thanks again

El Mar 06 Sep 2005 14:15, Richard Adams escribi=F3:
> On Saturday 03 September 2005 05:39, pepo wrote:
> > Hi friends...
> >
> >         I am using exim4 (exim4-daemon-light) 4.52-1 in my Sarge, a=
nd I
> > have a little
> > LAN (PC1:192.168.1.1, PC2:192.168.1.2, PC3:192.168.1.3) the first i=
s my
> > box.
> >
> >         Please, how do I accept any local mail in my LAN, but just
> > PC2:192.168.1.2
> > can send mails to Internet? and if you can help me with the same bu=
t only
> > few users can send to Internet.
>
> I have been waiting for a responce to your mail from others to see if=
 i can
> really help you, i saw one reply to which you did not eply to so i pr=
esume
> you may not have understood what was said/asked...
>
>
> Firstly, your mail is somewhat lacking in detail, detail as to just w=
hat
> you have as LAN and for all, just what you want to do.
>
> As i see it, you want mail on 192.168.1.2 (your machine) correct.???.
>
> You do not say if you are going to be collecting mail from your provi=
der or
> you want to run sendmail on 192.168.1.2 to listen for incomming
> connections, (not such a good thing to do thesedays with all that spa=
m
> around), leave that to your provider...
>
> Let me say this.
>
> A normal "Local Area Network", (LAN) would have a router possably in =
this
> case 192.168.1.1, that computer would be connected to the internet wi=
th
> another NIC and have a set of firewall rules via the command iptables=
, now
> i can only guess here but you said "sarge" meaning i presume debian.
> I have no knowlage of how debian sets it default iptables rules or ev=
en
> what frontend for iptables it uses, what i can tell you is that iptab=
les
> decides who does and who does not enter your computer or who passes t=
hro'
> it via the rules which you or some frontend defines.
>
> A good place to start leaning about iptables is;
> http://www.linuxguruz.com/iptables/
> There you will find many example firewalls for all sorts of needs.
>
> The basic rule for a home LAN is to Masquarde all traffic from inside=
 to
> the outside with the Inet IP# of the router, to do that one needs to =
use a
> basic masquerading firewall. (I am sure thats what debian sets as a d=
efault
> as most all distro's do the same thing).
>
> Your distro, will no doubtably have some or other GUI interface for d=
oing
> such a job.
>
> If you need more help please explain in more detail just what you wan=
t and
> what you are using.
>
> >         I hope that you can help me, it is urgent for me.
> >
> > Thanks
>
> --
> Regards Richard.
>
> PS, spelling mistakes are free in this mail.

--=20
           Linux User Registered #232544
             Jabber : pepo@jabberes.org
                ICQ : 337889406
          GnuPG-key : www.keyserver.net
---------------- -------------------------------
                   dum loquimur, fugerit invida
aetas: carpe diem, quam minimum credula postero.


_____________________________________=20
Este mensaje ha sido analizado por el
Servicio Gratuito de Protecci=F3n contra Virus de E-mail de EtapaOnLine=
=2E

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
