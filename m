From: "David Jones" <gnome@hawaii.rr.com>
Subject: Re: seeking advice on network troubleshooting strategy
Date: Wed, 25 Sep 2002 23:27:25 -1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <06e172327091a92HNLMAIL1@hawaii.rr.com>
References: <20020925155203.B31278@superfly.archi-me-des.de>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20020925141534.9450.qmail@web11008.mail.yahoo.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

One way to check it under Windows is to run the 
freeware ZoneAlarm personal firewall. It not only 
monitors incoming connections, it monitors outgoing 
connections. The first time the rendering client tries to 
go outside the box, ZoneAlarm will let you know. 
ZoneAlarm is already (or can be) set to log all network 
accesses, so you could just check the log to find out 
which port it's trying to use.

David
gnome@hawaii.rr.com

On 25 Sep 02, at 7:15, phrostie wrote:

> just a guess, but what ports does it use for this under
> windows? are these ports open on your linux box?
> 
> 
> --- Frank Joerdens <frank@joerdens.de> wrote:
> > Greetings. The application I am trying to get to work
> > under wine (Cinema4D network rendering client) works
> > nearly OK. Just one crucial bit it fails, very
> > unspectacularly and silently, to do.
> > 
> > What it's supposed to do: receiving 3d scenes from a
> > server, rendering those, and sending them back - this
> > all works just as under windows, except for the sending
> > back of files. About the only indication for this I get
> > on the Server, which says that this particular client
> > just failed to send images. The client app has no
> > controls; all it's supposed to do is sit there and do
> > what it's supposed to do.
> > 
> > I'm lost as to how to go about narrowing down the
> > problem. Networking functionality as such is there: it
> > does receive files and gets to work on them (the client
> > shows this). I don't get any error messages. I tried
> > dll, winsock and relay traces without being able to make
> > out anything that would appear somehow related to the
> > problem.
> > 
> > I am using the snapshot from September 4, a fresh RedHat
> > 7.3 installation:
> > 
> > [root@missy wine-20020904]# ldd --version
> > ldd (GNU libc) 2.2.5
> > 
> > on an Athlon 1300, and I configured wine with 
> > 
> > ./configure --enable-opengl --disable-debug
> > 
> > (I did the debug traces on another box which displayed
> > exactly the same behaviour)
> > 
> > Does anyone have any ideas as to how to go about
> > troubleshooting this? Any current winsock patches
> > floating about that I could play with?
> > 
> > Regards, Frank
> > _______________________________________________
> > wine-users mailing list
> > wine-users@winehq.com
> > http://www.winehq.com/mailman/listinfo/wine-users
> 
> 
> =====
> phrostie
> Oh I have slipped the surly bonds of DOS
> and danced the skies on Linux silvered wings.
> http://pfrostie.freeservers.com/cad-tastrafy/
> http://www.freelists.org/webpage/cad-linux
> 
> __________________________________________________
> Do you Yahoo!?
> New DSL Internet Access from SBC & Yahoo!
> http://sbc.yahoo.com
> _______________________________________________
> wine-users mailing list
> wine-users@winehq.com
> http://www.winehq.com/mailman/listinfo/wine-users



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
