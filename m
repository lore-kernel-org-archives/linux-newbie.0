From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: kernel patch failure: input please?
Date: Tue, 20 Jul 2004 21:31:40 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407202104220.27512@ppg_penguin.kenmoffat.uklinux.net>
References: <Pine.LNX.4.58.0407192341250.1363@debian-emach>
 <Pine.LNX.4.58.0407201257320.9456@ppg_penguin.kenmoffat.uklinux.net>
 <Pine.LNX.4.58.0407200846400.1363@debian-emach>
 <Pine.LNX.4.58.0407201637420.10481@ppg_penguin.kenmoffat.uklinux.net>
 <Pine.LNX.4.58.0407201115420.1363@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407201115420.1363@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Tue, 20 Jul 2004, James Miller wrote:

> On Tue, 20 Jul 2004, Ken Moffat wrote:
>
> >  So, in theory you can copy the thirteen new lines prefixed by '+' =
into
> > the file, remove the '+' signs, and that file is done.  What it doe=
s,
> > and whether or not it is sensible, I can't say.  Presumably there a=
re
> > other parts to the patch ?  Do they all apply to 2.4.25 ?
>
> The patch and instructions are for the 2.4.23 kernel, as I mentioned.=
  I
> was guessing it might all work for the 2.4.25 kernel I'm trying to us=
e.
> The site I've referenced gives only these few lines as the needed pat=
ch:
> the other patch I brought up onlist for delaying root file system mou=
nting
> (for super.c) was similarly brief.  I have no senisbility whatever ab=
out
> whether the brevity is suspiscious or problematic.
>

 it was just the 'jordi_queue' parameter that made me think there must
be more to it, but then I've never looked for the macro.

> > And why
> > hasn't the patch gone into the kernel (i.e. is it misconceived, or =
just
> > not submitted?).
>
> I suppose because most computer users don't need the delay in mountin=
g of
> the root file system the patch introduces.  I know I never had any ne=
ed
> for it before I started looking into booting from USB.  But I'm the r=
ank
> amateur here: someone closer to the wellsprings of knowledge and auth=
ority
> on matters kernel could answer more authoritatively.
>

 Actually, I don't care why the patch isn't in the kernel (assuming for
the moment that it isn't).  What matters is for you to be able to decid=
e
if it's good enough, hence the questions.  I think I've seen at least
one such patch mentioned in the past, but I don't recall any detail.

 I'm guessing that a patch for the the general kernel would be wrapped
in something, e.g. #ifdef CONFIG_BOOT_FROM_USB, to stop it getting in
most people's way, but for a separate patch that clearly isn't
necessary.

> > Come to that, it might be worth checking to see if
> > this has made it into 2.4.26 or 2.4.27-rc (yes, I know you've been =
told
> > not to use a -pre or -rc, but _if_ it gives you new functionality y=
ou
> > need then you should try the -rc and upgrade to 2.4.27 when it is
> > released).
>
> I've actually never been told that - at least not in this way.  I'm n=
ot
> even sure to what -rc and -pre refer: I'll go look it up later.  But =
I do
> know how to at least check to see if the patch is present in newer ke=
rnels
> (yes, my do_init.c text scanning capabilities are by now honed to a f=
ine
> edge . . .).  My unrefined newbie sensibilities tell me it's doubtful=
,
> since this is a highly specialized kernel tweak - useful only to thos=
e
> attempting to boot from USB, so far as I know.  But I know so little =
about
> these things that the range of possibilities is truly overwhelming.
> Things should not be ruled out easily.

 I just downloaded the changelog for 2.4.27-rc3 for other reasons, and
it certainly doesn't jump out and say it has been added.  New kernel
versions don't (usually) just materialise, there is a process of
applying changes (the -pre series), then fixing what has been found to
be bad (the -rc versions) until eventually the maintainer decides to
release it. So at the moment we've had 2.4.26, a number of 2.4.27-pres,
and now 3 2.4.27-rcs.  Most people on this list won't want to touch
anything other than stable released kernels, but anybody needing new
functionality might have to take an interest in the development.

 If you haven't already done so, you might want to read the thread from
l-k starting at
http://www.uwsg.iu.edu/hypermail/linux/kernel/0405.0/0224.html
particularly the final postings from Randy Dunlap and Willy Tarreau.

>
> >  If you're happy with a red prompt, that's fine, but expect "helpfu=
l"
> > comments from time to time because red doesn't show up in plain tex=
t the
> > way '#' does :-)
>
> Does this mean you suggested the # in place of the $ pretty much sole=
ly to
> help indicate to (me) the user that he is running as root?  I'm just
> trying to learn something here.
>
> Thanks, James

Yes

Ken
--=20
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
