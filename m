From: whitnl73@juno.com
Subject: Re: stopping diald
Date: Sun, 9 Mar 2003 10:40:17 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030309.104108.8.1.whitnl73@juno.com>
References: <Pine.LNX.4.53.0303081157280.18544@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.53.0303081157280.18544@homenet>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: jamtat@mailandnews.com
Cc: linux-newbie@vger.kernel.org

On Sat, 8 Mar 2003, James Miller wrote:

> Newbie question:
>
> I've started experimenting with diald, since I'm planning on setting up a
> small network from which more than one computer will be needing to access
> the 'net. Diald works fine, in terms of connecting to the provider. My
> question is about stopping the process. So far, I've been able to stop
> diald only by opening a console and su'ing and issuing "poff." Trying to
> run poff from a console as user results in the message "/usr/bin/poff:
> /bin/kill failed. None stopped". I believe that this is because the
> process is owned by root, as ps axu shows. I need a more elegant and less
> restrictive process for stopping the diald connection than having to open
> a console, su, then issue "poff." Can someone please suggest alternative
> methods? Eventually, I plan on adding a poff item to my Icewm toolbar. But
> understanding various ways to stop the process is prerequisite to that (I
> know how to edit the toolbar config file, and have some understanding of
> how the entries should look).
>
> Thanks for any help.
>
> James
> -
I don't know what diald is exactly - just a wrapper for pppd?  pppd
itself doesn't _have_ to run as root, it's just that the user that runs
it needs permission to read and write the modem device it is to use --
pppd is normally installed as suid root -- and the user that runs it may
stop it.

Lawson
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
