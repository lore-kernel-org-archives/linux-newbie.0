From: Erik Mouw <mouw@nl.linux.org>
Subject: Re: Floating point in kernel
Date: Tue, 24 Apr 2007 12:42:24 +0200
Message-ID: <20070424104224.GE20230@gateway.home>
References: <292693080704240137j78fbc852x67c8af23a267d681@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <292693080704240137j78fbc852x67c8af23a267d681@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; x-action="pgp-signed"
Content-Transfer-Encoding: 7bit
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Kernel Newbies <kernelnewbies@nl.linux.org>, Linux Newbie <linux-newbie@vger.kernel.org>

-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

On Tue, Apr 24, 2007 at 02:07:38PM +0530, Daniel Rodrick wrote:
> I've always read that although it isn't completely forbidden, but
> kernel code shouldn't use floating point arithmetic. It is not
> recommended, but surely looks possible.
> 
> So just for curosity purposes (and without getting into the debate of
> "You shouldn't be doing this..."), can some one point me a working
> example / code on how to use floating point in kernel?

There is no FP use in the kernel. The only thing that comes close is
the use of MMX/SSE/multimedia-instructions-du-jour in the software raid
subsystem (MMX etc. share the register set with FP).

> Also FP arithmatic is not recommended because the code will need to
> manually save and restore FPU registers in the event of context
> switch, right?

Yes, and that's what makes it so expensive to use. You can see it when
the kernel initialises raid5: even though MMX XOR has a larger
throughput than "normal" instructions, the kernel sometimes chooses the
normal instructions because the latency is so much lower.

> But how about in atomic context? Is it safe to use FP
> arithmetic ONLY in atomic context (intr and preemption disabled)?

Even in an atomic context you still need to save the FP state. See what
happens:

  userspace does something with FP
  interrupt
    enter atomic context
    mess with FP
    leave atomic context
  return from interrupt
  userspace finds FP in a different state than before


Erik

- -- 
They're all fools. Don't worry. Darwin may be slow, but he'll
eventually get them. -- Matthew Lammers in alt.sysadmin.recovery
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.6 (GNU/Linux)

iD8DBQFGLd8Q/PlVHJtIto0RAiAKAJ9vf/vRM+iLYMP9Oq9YuWslb3+kyACeNaID
QDIu/HuIiuEqbMGULc/7GfI=
=N38R
-----END PGP SIGNATURE-----
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
