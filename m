From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: why does this program crash while using setcontext?
Date: Tue, 21 Jan 2003 16:39:34 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030121163934.GA4303@cam.ac.uk>
References: <20030121081327.69768.qmail@mail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="ibTvN161/egqYuK8"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030121081327.69768.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Lee Chin <leechin@mail.com>
Cc: linux-newbie@vger.kernel.org


--ibTvN161/egqYuK8
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

One day, I'll learn to think before posting, and possibly check
that whatever I'm suggesting actually works...

> One thing I dont understand is why if I use setcontext instead of
> swapcontext in the following program, I crash?  Look at where I
> commented out my swapcontext
The problem here is that the foo context is being invoked twice
with the same set of registers, but a different stack setup.

The first time foo is invoked, it runs through one(), setting up a
return stack in the stack buffer, before invoking the main context.
The main context then re-invokes the foo context, which returns back
through its call stack, destroying it in the process.  main then
invokes foo again, resulting in weird stack corruption problems
and a crash.  One possible fix is shown below.

> #include <ucontext.h>
> #include <stdio.h>
> #include <setjmp.h>
>=20
> ucontext_t mainucp;
> ucontext_t fooucp;
>=20
> char stack[SIGSTKSZ];
Add another stack buffer:
char ostack[SIGSTKSZ];

<snip unchanged code>
> int main()
> {
Add
	volatile int count;
	count =3D 0;
This counts the number of times the main context has resumed.

>     getcontext(&fooucp);
>     fooucp.uc_link =3D &mainucp;
Note that when the foo context returns, the main context is invoked
immediately i.e. without trying to save foo's registers
(which wouldn't actually make much sense).  This means that
the foo context now contains registers suitable for running
foo(), but a stack suitable for running the end of one().  This
is a bad thing.

>     fooucp.uc_stack.ss_sp =3D stack;
>     fooucp.uc_stack.ss_size =3D sizeof(stack);
>     makecontext(&fooucp, one, 0);
>     getcontext(&mainucp);
Add
	if (count =3D=3D 1) {
		memcpy(ostack, stack, sizeof(stack));
	} else if (count > 1) {
		memcpy(stack, ostack, sizeof(stack));
	}
	count++;
This saves a copy of the foo context's stack the first time it switches
to main, and then restores it on later occasions.  This is ugly,
but it's probably the only way you're going to be able to re-use
contexts which have returned.

>     printf("(1, 2.2) main checking flag flag\n");
>     if (!flag)
>     {
>         setcontext(&fooucp);
>     }
>     else
>     {
>         printf("(2.5) main again\n");
>         setcontext(&fooucp);
>     }
> }

I should probably apologise for not going into nearly enough detail
for such an obscure API.

Steven.

--ibTvN161/egqYuK8
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE+LXfGO4S8/gLNrjcRAscdAJ9gL+Xzcp9DP3GQfDARQZK9hiZY3ACgljrw
wmDPegLc6a1bhVj09wjQPWQ=
=doRN
-----END PGP SIGNATURE-----

--ibTvN161/egqYuK8--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
