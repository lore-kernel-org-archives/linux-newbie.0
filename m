From: Steven Smith <sos22@cam.ac.uk>
Subject: Re: why does this program crash while using setcontext?
Date: Mon, 20 Jan 2003 14:32:40 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030120143236.GB2523@cam.ac.uk>
References: <20030120061001.72340.qmail@mail.com>
Mime-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="gatW/ieO32f1wygP"
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20030120061001.72340.qmail@mail.com>
List-Id: <linux-newbie.vger.kernel.org>
To: Lee Chin <leechin@mail.com>
Cc: linux-newbie@vger.kernel.org


--gatW/ieO32f1wygP
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

I think this problem is largely my fault; I should have been more
clear last time I posted.  Feel free to insult me.

I think the program below is trying to:

1) have main() record its context immediately.  Call this the
	main context.
2) Call foo() indirectly through one().
3) Record foo()'s context.  Call this the foo context.
4) Switch back to the main context.
5) Switch back to the foo context.
6) Return back from foo() to main() and then exit.

Now, the problem is that the various contexts are all running on the
same stack.  This means that the bit of main() which runs between
steps 4 and 5 is mangling the foo context, and so step 6 doesn't work.

The way to avoid this is to have the two contexts operating on
different stacks.  The main context can happily run on the process
stack, but one will need to be allocated for the foo context.
An array of chars is perfectly good for this; the usual size
is SIGSTKSZ, defined in signal.h.  In addition, we need to tell
the ucontext functions to use this stack.  Unfortunately, there's
no (easy) way to copy the current stack onto the context stack,
and so we need to use makecontext() rather than getcontext().

This means the design of the program looks more like this:

1) Have main() record its context.  Call this the main context.
2) Have main() construct a context which will invoke foo() on a
	different stack.  Call this the foo context.
3) Have main() invoke the foo context.
4) Switch back to the main context.
5) Switch back to the foo context.
6) Let the foo context return.  This will cause the context library
	to automatically switch back to the main context, which
	can then return and exit the program.

I've shown these changes below.

> ucontext_t mainucp;
> ucontext_t fooucp;
> int flag = 0;
char stack[SIGSTKSZ];

> int foo()
> {
>     printf("(2) foo setting context\n");

>     getcontext(&fooucp);
Kill this line - the foo context has already been constructed.

>     if (!flag)
>     {
>         flag = 1;

>         setcontext(&mainucp);
Replace this line with:
	  swapcontext(&fooucp, &mainucp);
We need swapcontext() rather than setcontext() so as the foo
context resumes from here, rather than the entry to one(),
which would cause an infinite loop.

>     }
>     printf("(3) foo done\n");
>     return 0;
> }

<snip deeply nested call to foo() from one()>

> int main()
> {
Insert
	getcontext(&fooucp);
	fooucp.uc_link = &mainucp;
	fooucp.uc_stack.ss_sp = stack;
	fooucp.uc_stack.ss_size = sizeof(stack);
	makecontext(&fooucp, one, 0);
The uc_link line says to return the main context if the foo context
ever returns.  The uc_stack lines are just setting up the stack,
and the makecontext() modified the foo context so that it calls
one() with 0 arguments.

For various reasons, primarily historical, contexts which are passed
to makecontext() must first be initialised with getcontext(), even
though makecontext() overwrites or makes redundant 95% of the work
which getcontext() did.

>     getcontext(&mainucp);
>     if (!flag)
>     {

>         one();
Replace this line with
	setcontext(&fooucp);
Note that this is setcontext() and not swapcontext(); if we used
swapcontext(), then the main context would resume from here
rather than the call to getcontext(), above, and so the else
branch of the if would never run.

>     }
>     else
>     {
>         printf("(2.5) main again\n");

>         setcontext(&fooucp);
Replace this line with
	swapcontext(&mainucp, &fooucp);
We need swapcontext() here, rather than setcontext(), because we
want the main context to resume here rather than at the getcontext(),
to avoid an infinite loop.

>     }
Insert:
	return 0;
:)
> }

Hopefully, that's a little clearer.

In general, it's a good idea to use swapcontext() rather than
setcontext() if at all possible, because then functions return to the
same place as they were called from, which is a lot easier to think
about.

Steven.

--gatW/ieO32f1wygP
Content-Type: application/pgp-signature
Content-Disposition: inline

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.2.0 (GNU/Linux)

iD8DBQE+LAiEO4S8/gLNrjcRAu2tAKDPezRdf6o1Xx+vcCkF7pFh8z8DogCgrDwd
vSWySC3uIOJ+x7JUetSEEaU=
=vNqn
-----END PGP SIGNATURE-----

--gatW/ieO32f1wygP--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
