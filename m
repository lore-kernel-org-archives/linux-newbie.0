From: =?iso-8859-1?Q?Juan_Facundo_Su=E1rez?= <facundo.suarez@ensi.com.ar>
Subject: Remote X
Date: Sun, 11 Apr 2004 11:08:18 -0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <004501c41fce$712216c0$680410ac@pcinstru1>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

 Hi all.

 I am trying to set up a remote X conection. And i am reading about XFr=
ee86.
I will tell you what i understood, and you tell me if i am wrong.
 I did some tests in my pc. i have started two or more Xfree86 server l=
ike
this:

 $:XFree86 :(a) vt(b)

 and after that, run wmaker like this:

 $:wmaker -display :(a)

 and it worked fine. I think i can do something like this, but running
wmaker in another pc on my lan, like:

 $:wmaker -display 192.168.0.1:(a)

 where 192.168.0.1 is the ip from machine where i started XFree86. I th=
ink
this shoud start wmaker any pc from my lan, working in host 192.168.0.1=
=2E Is
this correct?, or need to change something?. what is it?.

 Besides, i know about VNC. I have tried it, and it is great how it wor=
ks
windo$/linux platforms crossover. But, if you know about any other way =
to
make remotes X sessions, please, tell me. I will ask you, too, about an=
y
window$ X client to work with Xfree86, if there is any.

 Thaks !!

     _____
    / ___/
   / /_  ____    ____   ____    Facundo Su=E1rez - facundo.suarez@ensi.=
com.ar
  / __/ / __ \  / ___\ / __ \   Instrumentos - ENSI SE
 / /   / /_/ / / /___ / /_/ /   Arroyito - Argentina
/_/    \_____\ \____/ \____/    Usuario Registrado Linux

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
