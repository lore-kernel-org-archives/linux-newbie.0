From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: Telnet servers ...
Date: Tue, 7 Jan 2003 20:19:11 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0301072013550.14635-100000@ppg_penguin>
References: <avf8iq$omc$1@main.gmane.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <avf8iq$omc$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jamie Risk <jamie_risk@yahoo.ca>
Cc: linux-newbie@vger.kernel.org

On Tue, 7 Jan 2003, Jamie Risk wrote:

> I downloaded, compiled and am now using (via xinetd) the telnet daemon
> from GNU's Inetutils. In RH distributions, I noticed the daemon takes on
> the name "/sbin/in.telnetd" (or something very similar) whereas the
> inetutils
> telnet daemon takes on the name "/usr/libexec/telnetd".
>

 Anything daemon name starting `in.' suggests it is being called from
tcp_wrappers, which *might* be providing a bit less insecurity.
 
> Two questions:
>  * Is there a difference between the two daemons?

 Pass, I wouldn't dare run telnetd so I don't know ;-)

> and, a little more GNU install specific...
> * What does the /usr/libexec directory typically hold?
>     I thought after accepting the default "./configure" outputs and running
>     "make && make install", the daemons would be placed in /sbin or
> /usr/sbin.
>

 From memory, libexec is intended for binaries that should not be
executed directly (e.g. you are running it from xinetd).
 
> - Jamie
> 
> 
> 
> -

 Do you *really* need the telnet daemon ?

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
