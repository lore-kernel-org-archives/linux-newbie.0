From: Chandrabhanu Mahapatra <chandrabhanu.anand@gmail.com>
Subject: Re: Undefined Functions in use
Date: Tue, 27 Sep 2011 15:51:58 +0530
Message-ID: <CAOG7oKwoybxuL67dM+Sgo85s6uMJD8+yJzPAd8jNF2DvJFUXeQ@mail.gmail.com>
References: <CAOG7oKynLOkg1zaTU7Bn7Mw=Xn4zT8L9XR1ZNWyWho0j3_12tA@mail.gmail.com>
	<1A42CE6F5F474C41B63392A5F80372B212DC60A606@shsmsx501.ccr.corp.intel.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=W/XO5vNJeb77XHQpdHb+AXeDYqsQ2t5/Q0vZY1wkbhU=;
        b=GSM+4nGYyRG0/oGjDfuGtFMzGgUZcGEZKxgJXTbedUpEBLrEtMhy/lUw24DKaJ8cUo
         qmq8UPnaPRipOG0/L5suh9mQpCvjmL9xM7+G8BYogEmMWkUphboHt5k60VGYOMK0dn3P
         XXWuqNenGUT+4JyLzrnhBXyfDSHO+1jbvwJfo=
In-Reply-To: <1A42CE6F5F474C41B63392A5F80372B212DC60A606@shsmsx501.ccr.corp.intel.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Xu, Anhua" <anhua.xu@intel.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

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
