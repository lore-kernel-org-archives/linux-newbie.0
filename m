From: James Miller <jamtat@mailsnare.net>
Subject: Re: kernel patch failure: input please?
Date: Tue, 20 Jul 2004 11:39:25 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407201115420.1363@debian-emach>
References: <Pine.LNX.4.58.0407192341250.1363@debian-emach>
 <Pine.LNX.4.58.0407201257320.9456@ppg_penguin.kenmoffat.uklinux.net>
 <Pine.LNX.4.58.0407200846400.1363@debian-emach>
 <Pine.LNX.4.58.0407201637420.10481@ppg_penguin.kenmoffat.uklinux.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407201637420.10481@ppg_penguin.kenmoffat.uklinux.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Tue, 20 Jul 2004, Ken Moffat wrote:

> printk is the kernel's version of printf.

Oh.  Guess I'll have to mull over that one awhile.

>  So, in theory you can copy the thirteen new lines prefixed by '+' into
> the file, remove the '+' signs, and that file is done.  What it does,
> and whether or not it is sensible, I can't say.  Presumably there are
> other parts to the patch ?  Do they all apply to 2.4.25 ?

The patch and instructions are for the 2.4.23 kernel, as I mentioned.  I
was guessing it might all work for the 2.4.25 kernel I'm trying to use.
The site I've referenced gives only these few lines as the needed patch:
the other patch I brought up onlist for delaying root file system mounting
(for super.c) was similarly brief.  I have no senisbility whatever about
whether the brevity is suspiscious or problematic.

> And why
> hasn't the patch gone into the kernel (i.e. is it misconceived, or just
> not submitted?).

I suppose because most computer users don't need the delay in mounting of
the root file system the patch introduces.  I know I never had any need
for it before I started looking into booting from USB.  But I'm the rank
amateur here: someone closer to the wellsprings of knowledge and authority
on matters kernel could answer more authoritatively.

> Come to that, it might be worth checking to see if
> this has made it into 2.4.26 or 2.4.27-rc (yes, I know you've been told
> not to use a -pre or -rc, but _if_ it gives you new functionality you
> need then you should try the -rc and upgrade to 2.4.27 when it is
> released).

I've actually never been told that - at least not in this way.  I'm not
even sure to what -rc and -pre refer: I'll go look it up later.  But I do
know how to at least check to see if the patch is present in newer kernels
(yes, my do_init.c text scanning capabilities are by now honed to a fine
edge . . .).  My unrefined newbie sensibilities tell me it's doubtful,
since this is a highly specialized kernel tweak - useful only to those
attempting to boot from USB, so far as I know.  But I know so little about
these things that the range of possibilities is truly overwhelming.
Things should not be ruled out easily.

>  If you're happy with a red prompt, that's fine, but expect "helpful"
> comments from time to time because red doesn't show up in plain text the
> way '#' does :-)

Does this mean you suggested the # in place of the $ pretty much solely to
help indicate to (me) the user that he is running as root?  I'm just
trying to learn something here.

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
