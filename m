From: Ray Olszewski <ray@comarre.com>
Subject: Re: Suse 8.1 Konsole Sco Openserver
Date: Tue, 01 Apr 2003 09:34:39 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030401091855.01ed2038@celine>
References: <1049214745.3728.6.camel@linux>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1049214745.3728.6.camel@linux>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

At 11:32 AM 4/1/2003 -0500, Paul Kraus wrote:
>For work i have to attach to sco box that runs are main work application
>(tbred). Everything works great except that the arrow keys are not
>correct. How can  i set Konsole to send the charact codes so that it
>works correctly. I also need to be able to work for the shell in unix.
>Here backspace del both cause a carrige return.
>
>If this is outside the scope of the list please point me where i need to
>go. Thanks!!

What terminal type is the SCO app (and the SCO shell ... you do mean a 
shell on the SCO system, not the Linux system, right?) expecting? It might 
be easier to tell it to expect the terminal type that Konsole delivers by 
default than to try to adapt Konsole on an app-by-app basis. The details of 
this depends a bit on how you are connecting to the SCO system 
(ssh/telnet/something_else).

If you need to change the terminal type at the Linux end, the usual way to 
do it is in the shell's initialization file ... perhaps /etc/profile or 
~./.profile or ~./.bashrc  (or some variant of this ... exact naming is 
still a bit distro-specific).

I don't run Konsole here and cannot quickly find how to set the terminal 
type in Konsole. Eterm, for example, has a menu-bar choice for this. 
xtrerm, by contrast, is pretty much locked into VT102 emulation. I don't 
know how flexible Konsole is in this regard.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
