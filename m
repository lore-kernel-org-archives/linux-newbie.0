From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: kernel patch failure: input please?
Date: Tue, 20 Jul 2004 17:05:45 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407201637420.10481@ppg_penguin.kenmoffat.uklinux.net>
References: <Pine.LNX.4.58.0407192341250.1363@debian-emach>
 <Pine.LNX.4.58.0407201257320.9456@ppg_penguin.kenmoffat.uklinux.net>
 <Pine.LNX.4.58.0407200846400.1363@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407200846400.1363@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Tue, 20 Jul 2004, James Miller wrote:

> On Tue, 20 Jul 2004, Ken Moffat wrote:
>
> >
> >  I've seen this when I was hand-editing a diff to only use some of =
the
> > changes in a file.  Can be caused by errors in the "magic numbers"
> > saying how many lines change/where they are.  This sort of thing me=
ans
> > the patch will not apply for *anyone*, so you might want to see if =
the
> > version you got was corrupted, or has been updated.
>
> For reference, here's the "updated" (adapted for the 2.4.23 kernel) p=
atch:
>
> --- init/do_mounts.c 2003-11-28 13:26:21.000000000 -0500
> +++ init/do_mounts.c.mount_root 2006-01-29 10:45:53.000000000 -0500
> @@ -759,6 +759,19 @@
>
> static void __init mount_root(void)
> {
> + static DECLARE_WAIT_QUEUE_HEAD (jordi_queue);
> +
> + printk ("\n\n\n---------------------------------\n");
> +
> + printk (" WAITING FOR A WHILE (1000) \n");
> +
> + printk (" TO DETECT THE USB DISK \n");
> +
> + sleep_on_timeout (&jordi_queue, 2000);
> +
> + printk ("---------------------------------\n\n\n");
> +
> +
> #ifdef CONFIG_ROOT_NFS
> if (MAJOR(ROOT_DEV) =3D=3D NFS_MAJOR
> && MINOR(ROOT_DEV) =3D=3D NFS_MINOR) {
>
> In the C source file do_mounts.c, the line right before "static void
> __init mount_root(void)" is blank and is line number 759 (line 760 re=
ads
> "static void __init mount_root(void)").  This is the 5th line of my
> kernel2-4-25patch file that is being complained about as the problem =
area.
>

 In that case, I don't know what the problem is.  In the old file ('-')
the hunk is for six lines at line 759, in the new ('+') it's for 19
lines [ 6 existing, for context, plus 13 new =3D 19, just like it says =
].

 The content of the patch scares me - all that shouting, a value of 100=
0
hard-coded in the print, but a value of 2000 used in the code, and all
those gratuitous blank lines in the printk.

 The DECLARE_WAIT_QUEUE_HEAD is presumably a macro (grep for it in the
kernel tree you are building), for which jordi_queue is a parameter.

> >  If the file isn't very big, you can copy the code in a text editor=
, but
> > that isn't recommended for a newbie list because you need to unders=
tand
> > what the code is doing.
>
> I don't understand very well what the code is doing.  I see that, in
> do_mounts.c, "static void __init mount_root(void)" is followed immedi=
ately
> by "#ifdef CONFIG_ROOT_NFS".  From this, I deduce that what lies betw=
een
> the two in the patch is what's actually getting inserted.  Further, I=
'm
> guessing the + signs at the left margin are telling the patching rout=
ine
> to add the lines followed by the sign to the file being patched.  Wor=
ds
> like "WAIT," "DETECT" and "USB DISK" are, of course comprehensible.
> Others like "printk" and "jordi_queue" mean nothing to me.  I'm also =
not
> clear on the line spacing: the lines of the patch are mostly what we =
would
> call in typesetting/page formatting terminology "double spaced" or ev=
en
> triple spaced.  I know generally the conventions followed in publishi=
ng
> regarding line spacing, and have my own ideas about how these things =
can
> aid in (or are irrelevant to) reading comprehension.  What they mean =
to
> computers - if anything - I have no idea.
>

 Line spacing means nothing to a computer.  Yes, the lines prefixed '+'
are to be inserted, similarly any lines prefixed '-' would be deleted.
The 'incomprehensible' words are what will be printed on the console,
printk is the kernel's version of printf.

 So, in theory you can copy the thirteen new lines prefixed by '+' into
the file, remove the '+' signs, and that file is done.  What it does,
and whether or not it is sensible, I can't say.  Presumably there are
other parts to the patch ?  Do they all apply to 2.4.25 ?  And why
hasn't the patch gone into the kernel (i.e. is it misconceived, or just
not submitted?).  Come to that, it might be worth checking to see if
this has made it into 2.4.26 or 2.4.27-rc (yes, I know you've been told
not to use a -pre or -rc, but _if_ it gives you new functionality you
need then you should try the -rc and upgrade to 2.4.27 when it is
released).

> >  Also, you don't need to be root until you are trying to install th=
ings,
> > and setting PS1 to end '\$' (with the whole string in _single_ quot=
es)
> > will change the prompt to end in '#' when you _are_ root.
>
> The file I'm patching is in /usr/src/kernel-source-2.4.25, and my use=
r
> does not have read/write permissions in that directory.  At least tha=
t was
> my assumption.  Not that I question your advice on the root prompt, b=
ut
> why would having # instead of $ matter?  If it's just to remind one t=
hat
> they are running as root, I have another way of indicating that: the =
whole
> root prompt is red.  But maybe there is some other reason to have #
> instead of $ when running as root?
>

 If you're happy with a red prompt, that's fine, but expect "helpful"
comments from time to time because red doesn't show up in plain text th=
e
way '#' does :-)

Ken
--=20
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
