From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: kernel patch failure: input please?
Date: Tue, 20 Jul 2004 13:07:36 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0407201257320.9456@ppg_penguin.kenmoffat.uklinux.net>
References: <Pine.LNX.4.58.0407192341250.1363@debian-emach>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407192341250.1363@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="iso-8859-1"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Mon, 19 Jul 2004, James Miller wrote:

> Using sort of a scatter-gun (maybe scatter-brained?) approach to the
> problem of booting a USB drive, I've managed to install a base Debian=
 file
> system to the USB drive.  Yes, the new beta Sarge installer gave me t=
he
> option of installing the system there.  Booting is, as has been allud=
ed in
> the earlier booting from USB exchange on this list, another matter.
> Since the system is meant to use the 2.4.25-1-386 kernel, I've decide=
d I
> should try and compile that kernel with the root file system mounting
> delay patch we've spoken about.  But, I've gotten stuck at the patchi=
ng
> phase.  I'm actually using directions for patching a 2.4.23 kernel th=
at I
> found on another USB booting site (
> http://www.freewebs.com/tsj/bootingUSB_ldp_v0.1.htm ) that suggests
> applying the patch to do_mounts.c .  When I try to apply the patch us=
ing
> the directions found at that site, I get the following:
>
> [11:39:55]root@mymachine kernel-source-2.4.25$ patch -p0
> <kernel2-4-25patch
> patching file init/do_mounts.c
> patch: **** malformed patch at line 5: static void __init mount_root(=
void)
>

 I've seen this when I was hand-editing a diff to only use some of the
changes in a file.  Can be caused by errors in the "magic numbers"
saying how many lines change/where they are.  This sort of thing means
the patch will not apply for *anyone*, so you might want to see if the
version you got was corrupted, or has been updated.

 If the file isn't very big, you can copy the code in a text editor, bu=
t
that isn't recommended for a newbie list because you need to understand
what the code is doing.

 Also, you don't need to be root until you are trying to install things=
,
and setting PS1 to end '\$' (with the whole string in _single_ quotes)
will change the prompt to end in '#' when you _are_ root.

Ken
--=20
 das eine Mal als Trag=F6die, das andere Mal als Farce

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
