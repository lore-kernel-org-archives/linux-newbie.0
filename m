From: Peter <pfheiss@philonline.com>
Subject: Re: VBox
Date: Sat, 26 Oct 2002 16:19:11 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210260819.g9Q8JCn03585@philonline.com>
References: <5.1.0.14.1.20021025073755.0218a360@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Fri, 25 Oct 2002 07:55:13 MST."
             <5.1.0.14.1.20021025073755.0218a360@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Thnaks Ray!

ray@comarre.com said:
>  You might also see if the  "respawn" message is preceded in the logs
> by any more specific message  about the process ... such messages
> usually are.

In /var/log/messages I get the following

Oct 25 14:39:29 philonline modprobe: modprobe: Can't locate module 
char-major-43
Oct 25 14:44:30 philonline last message repeated 10 times
Oct 25 14:49:31 philonline last message repeated 10 times
Oct 25 14:54:32 philonline last message repeated 10 times
Oct 25 14:59:33 philonline last message repeated 10 times

when I5:2345:respawn:/usr/sbin/vboxgetty -d /dev/ttyI5
is enabled in inittab.

ray@comarre.com said:
> Does vboxd run  directly as a daemon or through inetd? If the first,
> is it actually  running? If the second, is inetd.conf configured
> proprely? Does either  vboxd or inetd log anything in connection with
> these failed attempts?

The instructions say that vboxd can only be used with inetd for which reason I 
put the following in /etc/inetd.conf:
vboxd  stream  tcp  nowait  root  /usr/sbin/tcpd  /usr/sbin/vboxd
as per instructions.

I have
vbox version 2.0.0BETA5 (17-NOV-98)
and run RH7.2

ray@comarre.com said:
> This URL -- http://www.linuxnetmag.com/en/issue2/m2vbox1.html --
> (found in  2 minutes using Google) has some troubleshooting advice for
> vboxgetty  and  vboxd


I checked this out and tail vboxgetty-ttyI5.log gives

26-Oct 16:04:46 <D> Opening modem port "/dev/ttyI5"...
26-Oct 16:04:46 <F> Can't open modem port "/dev/ttyI5"

after /usr/sbin/vboxgetty -d /dev/ttyI5.

So that what it is. The modem port can't be opened. Then where do we go from 
here?

Regards


-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
