From: Ray Olszewski <ray@comarre.com>
Subject: Re: Exim borked
Date: Sat, 31 Aug 2002 07:27:08 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020831071532.02182830@celine>
References: <BAG2SMTP.1480023854.030749181@digdilem.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BAG2SMTP.1480023854.030749181@digdilem.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Is this a standard Debian install? So that exim was installed suring the 
base setup (or updraded via apt)? Or did you do something special by hand 
(or even with dpkg)?

First, your question #2. A stock Debian Sid (you appear to be running 
Woody, but it is surely the same) install sets up exim as follows:

         -rwsr-xr-x    1 root     root       471048 Mar  4 15:05 /usr/sbin/exim

The error you posted sounds like you do not have the suid bit set (the "s" 
in the leftmost "rws"). To fix this by hand. as root, execute this command:

         chmod +s /usr/sbin/exim

Then restart the exim daemon (unless you are running it through inetd, in 
which case you can skip this step).

At 11:09 PM 8/30/02 +0000, SPAM.B.GONEftn@digdilem.org wrote:

>Hello All
>
>I've managed to break exim. :(
>
>(Debian 3, Kernal 2.4.18)
>
>/var/log/exim/paniclog reads thus:
>
>Unable to get root to set uid 1000 and gid 8 for local delivery to
>flash: uid=8 euid=8
>
>
>Searched the web for help and it appears my uid is somehow screwed up
>- but I don't know how to set the uid for exim so it runs as root, so
>what I'm after is:
>
>1. How to setuid exim as root (it's running as daemon) so it'll work.
>2. Double-check the file permissions for /usr/sbin/exim against
>somebody with a working copy.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
