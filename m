From: sannikov <sannikov@cs.karelia.ru>
Subject: RE: Undefined Functions in use
Date: Wed, 28 Sep 2011 10:29:00 +0400
Message-ID: <0cec37725a92984017974c558311b3e6@cs.karelia.ru>
References: <CAOG7oKynLOkg1zaTU7Bn7Mw=Xn4zT8L9XR1ZNWyWho0j3_12tA@mail.gmail.com>
 <1A42CE6F5F474C41B63392A5F80372B212DC60A606@shsmsx501.ccr.corp.intel.com>
 <CAOG7oKwoybxuL67dM+Sgo85s6uMJD8+yJzPAd8jNF2DvJFUXeQ@mail.gmail.com>
 <1A42CE6F5F474C41B63392A5F80372B212DC685664@shsmsx501.ccr.corp.intel.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1A42CE6F5F474C41B63392A5F80372B212DC685664@shsmsx501.ccr.corp.intel.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Xu, Anhua" <anhua.xu@intel.com>
Cc: Chandrabhanu Mahapatra <chandrabhanu.anand@gmail.com>, linux-newbie <linux-newbie@vger.kernel.org>

Hi.

> In the latest Linux kernel 3.xx.xx, I cannot grep DECLARE_MUTEX and
> DECLARE_MUTEX_LOCKED. Both of them may be deprecated by the kernel.

AFAIK DECLARE_MUTEX is deprecated. It was based on semaphores.
In new kernels you should to use DEFINE_MUTEX.
http://lxr.linux.no/linux+v3.0.4/include/linux/mutex.h
This happens between 2.6.36 and 2.6.38.


> __builtin_constant_p is more like a gcc specific compiling option. This
> has beyond the kernel scope. If interested, please refer to gcc manual
for
> more info.

http://gcc.gnu.org/onlinedocs/gcc/Other-Builtins.html

PS: Google is your friend. ;)

--
WBR, Alexander Sannikov.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
