From: Onur Kucuk <onur@delipenguen.net>
Subject: Re: inittab
Date: Wed, 31 Mar 2004 15:27:06 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040331152706.4e9c30fc.onur@delipenguen.net>
References: <406AA2BA.7020209@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <406AA2BA.7020209@arrakis.es>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org


On Wed, 31 Mar 2004 12:51:38 +0200
Andrew Langdon-Davies <ald2@arrakis.es> wrote:

> Good morning,
> 
> Following is from /etc/inittab on a client running Slackware-9.0.
> 
> # These are the standard console login getties in multiuser mode:
> c1:1235:respawn:/sbin/agetty 38400 tty1 linux
> c2:1235:respawn:/sbin/agetty 38400 tty2 linux
> c3:1235:respawn:/sbin/agetty 38400 tty3 linux
> c4:1235:respawn:/sbin/agetty 38400 tty4 linux
> c5:1235:respawn:/sbin/agetty 38400 tty5 linux
> c6:12345:respawn:/sbin/agetty 38400 tty6 linux
> c7:12345:respawn:/usr/X11/bin/XFree86 -query 192.168.0.1 :1 vt08
> 
> The last line is added by me. Sure enough, I get a display on vt08
> from the server, which is running Mandrake-9.2. So far, so good. The
> two things I cannot work out, however many times I re-read man
> inittab, are 

 I guess you are using init 4 as default

> 1. How do I stop the local X system from giving me a
> login screen? (it comes up on vt02)

 You are defaulting to init 4, which executes /etc/rc.d/rc.4

 change your default init to 3 in inittab file.

 id:3:initdefault:


> 2. Why have I not got any text consoles? (they are all just black with
> a blinking cursor).

 As you are in init 4, that is normal. Look at the above lines

 c1:1235:resp.....
     ^^^
  it does not have an "init 4" definition. Either add a 4 there, or
switch to init 3.


-- 
 Onur Kucuk                                        Knowledge speaks,   
 <onur@delipenguen.net>                            but wisdom listens  

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
