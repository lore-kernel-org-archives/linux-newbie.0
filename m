From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: striking X server
Date: 04 Nov 2002 09:28:59 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1036402140.23486.6.camel@zebra.vil.ite.mee.com>
References: <200211021744.gA2HiTPq017274@pyxis.wanadoo.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211021744.gA2HiTPq017274@pyxis.wanadoo.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Heimo Claasen <hammer@revobild.net>
Cc: linux-newbie@vger.kernel.org

It looks like your problem is that something has stopped working right,
and generated huge error logs.

Is /var a separate partition or is it just a directory under /?

Check through /vae/log and look for anything huge. Depending on what it
is, you could remove it or put is somewhere else.

It is also quite possible that one of the regular cron jobs has gone
bang, and is sending lots of emails to root. Check out file sizes in 
/var/spool/mail

Paul.

On Sat, 2002-11-02 at 00:00, Heimo Claasen wrote:
> On a perfectly well running installation (Mdk 8.2), all of a sudden
> the X server - installed as the "-4" version - does not want to start
> up any more, quits with "font 'fixed' not found".  Bizarre. The attempt
> to re-install the basic XFree86-fontfile packages (for shure they _had_
> been installed, and the machine _was_ running with this X the day
> before, but a rpm-check said "package[s] not installed": bizarre too)
> results in a lot of errro-messages, all claiming "not enopugh space on
> device". Puzzled control gives indeed, the 2 (!) GB root-"/" partition
> being "100 % used" - ultimate bezarrerie, as quite lately before, it
> was checked (precisely in view of an eventual, and quite bulky addition
> of Java) and found filled up to 73 % only; but nothing, _absolutely_
> nothing had been changed, re- or newly installed since.
> 
> AND X had run perfectly as usual at the last boot before.
> 
> ?!?
> 
> (And note that the machine boots up well into command line mode as
> usual; all filesystemchecks therewith indicate "clean", etc.)
> 
> :(((
> 
> // Heimo Claasen //<revobild at revobild dot net>// Brussels 2002-11-02
> The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
