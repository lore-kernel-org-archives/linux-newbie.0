From: "Xu, Anhua" <anhua.xu@intel.com>
Subject: RE: Undefined Functions in use
Date: Wed, 28 Sep 2011 09:28:30 +0800
Message-ID: <1A42CE6F5F474C41B63392A5F80372B212DC685664@shsmsx501.ccr.corp.intel.com>
References: <CAOG7oKynLOkg1zaTU7Bn7Mw=Xn4zT8L9XR1ZNWyWho0j3_12tA@mail.gmail.com>
	<1A42CE6F5F474C41B63392A5F80372B212DC60A606@shsmsx501.ccr.corp.intel.com>
 <CAOG7oKwoybxuL67dM+Sgo85s6uMJD8+yJzPAd8jNF2DvJFUXeQ@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <CAOG7oKwoybxuL67dM+Sgo85s6uMJD8+yJzPAd8jNF2DvJFUXeQ@mail.gmail.com>
Content-Language: en-US
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
To: Chandrabhanu Mahapatra <chandrabhanu.anand@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

Yes, cscope should be more powerful than ctags. Could you try to grep these items in your source ? If they are not there. Cscope definitely cannot find them.

In the latest Linux kernel 3.xx.xx, I cannot grep DECLARE_MUTEX and DECLARE_MUTEX_LOCKED. Both of them may be deprecated by the kernel.

For other items like: INIT_WORK and TIMER_INITIALIZER can be found via ctags.  I'm not sure if your cscope covers all the source files.

__builtin_constant_p is more like a gcc specific compiling option. This has beyond the kernel scope. If interested, please refer to gcc manual for more info.

Also, cscope and ctags can only cover C files. Some functions or micros are defined in Assembly files. So you cannot find them in cscope.

The best way to learn is to google them. You must find these questions has been asked for many times.

Good Luck

-----Original Message-----
From: Chandrabhanu Mahapatra [mailto:chandrabhanu.anand@gmail.com] 
Sent: Tuesday, September 27, 2011 6:22 PM
To: Xu, Anhua
Cc: linux-newbie
Subject: Re: Undefined Functions in use

I used cscope and vim editor but still I am only finding the usage of
the above symbols but no definition.
Are these symbols GCC builtin symbols or ARM specific symbols.

On Mon, Sep 26, 2011 at 4:30 PM, Xu, Anhua <anhua.xu@intel.com> wrote:
> Install your tools ctags and use it to track all the symbols in the source.
> google ctags, you will find solutions
>
> -----Original Message-----
> From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-owner@vger.kernel.org] On Behalf Of Chandrabhanu Mahapatra
> Sent: Monday, September 26, 2011 6:22 PM
> To: linux-newbie
> Subject: Undefined Functions in use
>
> Where can I find the definition of TIMER_INITIALIZER, DECLARE_MUTEX,
> DECLARE_MUTEX_LOCKED, softirq_vec,__builtin_constant_p, INIT_WORK,
> etc.?


-- 
Chandrabhanu Mahapatra
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
