From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: Threading in linux
Date: Tue, 24 Apr 2007 11:54:49 +0200
Message-ID: <20070424095449.GC20230@gateway.home>
References: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <7783925d0704232338h52bc1180i435a880b267ca0f3@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; x-action="pgp-signed"
Content-Transfer-Encoding: 7bit
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Tue, Apr 24, 2007 at 12:08:40PM +0530, Rick Brown wrote:
> I read that the kernel does not differentiate between threads and
> processes.

Correct.

>  That means, we can say that on a Linux system, the
> threading is purely provided by user level thread libraries, right?

No. User level thread libraries are usually things like LWP (light
weight processes), that's not what the Linux kernel uses. The Linux
clone() system call is a superset of the standard Unix fork() system
call. With clone() you can tell what parent and child have to share. A
thread is just an execution context that shares the protection context
with its parent.

> So as long as relevant system calls do not change, it should be
> possible to run any threading library on any kernel? NPTL on 2.4?
> pthreads on 2.6?

Not sure about that. There were certainly issues, though I can't
remember exactly what.


Erik

- -- 
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGLdPp/PlVHJtIto0RAoV4AJ9+NUu6wSCAniqHGebFcryzJ4pt1ACffRFC
062W3+mce5yHafv4Ryjc/G4=
=LAWy
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
