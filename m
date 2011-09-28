From: Chandrabhanu Mahapatra <chandrabhanu.anand@gmail.com>
Subject: Re: Undefined Functions in use
Date: Wed, 28 Sep 2011 11:22:23 +0530
Message-ID: <CAOG7oKzTjHrnnA1mqtQo=r6Tf7yckqkWuDJuK6iGt_VhJenAMA@mail.gmail.com>
References: <CAOG7oKynLOkg1zaTU7Bn7Mw=Xn4zT8L9XR1ZNWyWho0j3_12tA@mail.gmail.com>
	<1A42CE6F5F474C41B63392A5F80372B212DC60A606@shsmsx501.ccr.corp.intel.com>
	<CAOG7oKwoybxuL67dM+Sgo85s6uMJD8+yJzPAd8jNF2DvJFUXeQ@mail.gmail.com>
	<1A42CE6F5F474C41B63392A5F80372B212DC685664@shsmsx501.ccr.corp.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=decsht+OO28QCJnIgfVMJDJyZYt3FlcAg2y+nlwM1AI=;
        b=jZhkz5TWcz8v31udYJxM0B6a/EMqTwEtuYHSWS+f8iddxH970Q2iL/ZvbjQ7Eea7F8
         nGkI0k1Ryjp7u7c9f/O6qJgpWpzuIwjo/EX1lEb0IQboGQhqdr9z3+1uAQSm72nLrt8b
         uq/eA+/1Idof9PXc+SbGeKWpGps4y7kkNRxeg=
In-Reply-To: <1A42CE6F5F474C41B63392A5F80372B212DC685664@shsmsx501.ccr.corp.intel.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: "Xu, Anhua" <anhua.xu@intel.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On Wed, Sep 28, 2011 at 6:58 AM, Xu, Anhua <anhua.xu@intel.com> wrote:
> Yes, cscope should be more powerful than ctags. Could you try to grep=
 these items in your source ? If they are not there. Cscope definitely =
cannot find them.
>
> In the latest Linux kernel 3.xx.xx, I cannot grep DECLARE_MUTEX and D=
ECLARE_MUTEX_LOCKED. Both of them may be deprecated by the kernel.

Can you tell what these have been deprecated into? The new declaration
names atleast.

> For other items like: INIT_WORK and TIMER_INITIALIZER can be found vi=
a ctags. =A0I'm not sure if your cscope covers all the source files.

Is there any tool supporting vim or any other editor that can also
parse header(.h), and assembly files ( .S etc.) files for symbols?

> __builtin_constant_p is more like a gcc specific compiling option. Th=
is has beyond the kernel scope. If interested, please refer to gcc manu=
al for more info.

Thanks for letting me know. Unlike lxr for linux kernel reference is
there any website for GCC refrences?

--=20
Chandrabhanu Mahapatra
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
