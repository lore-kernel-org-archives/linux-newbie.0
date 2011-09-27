From: Aniruddha Bhattacharyya <aniruddha.aot@gmail.com>
Subject: Re: Undefined Functions in use
Date: Tue, 27 Sep 2011 16:17:19 +0530
Message-ID: <CAOXuEsyLfPFAQV+PZHMMqDjUcLcKFQoPcXb9cOKsq6qGxcYxpw@mail.gmail.com>
References: <CAOG7oKynLOkg1zaTU7Bn7Mw=Xn4zT8L9XR1ZNWyWho0j3_12tA@mail.gmail.com>
 <1A42CE6F5F474C41B63392A5F80372B212DC60A606@shsmsx501.ccr.corp.intel.com> <CAOG7oKwoybxuL67dM+Sgo85s6uMJD8+yJzPAd8jNF2DvJFUXeQ@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type:content-transfer-encoding;
        bh=6jvlenk7B9/WXbeqTGBuviZWZVSlOd6w4PtKxZY7dok=;
        b=ORWKyY/+KIzpr2eOIDmUlN8bL+nK923VjHR62bOyC3lKbLsxK6ofiESc7gjGejkbw9
         dyy9g9TTOMegXSQSwfKopWEpACLRyFS96jd6xngWclHAwYaQu6O54U1RJAYiqvP8JIdi
         T4VCkG2Wn9Y/WDnae0Wu8dTDz0xZ9ywN3dciY=
In-Reply-To: <CAOG7oKwoybxuL67dM+Sgo85s6uMJD8+yJzPAd8jNF2DvJFUXeQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Chandrabhanu Mahapatra <chandrabhanu.anand@gmail.com>
Cc: "Xu, Anhua" <anhua.xu@intel.com>, linux-newbie <linux-newbie@vger.kernel.org>

It is also possible that the signature is changed and renamed to
something else.

In Linux, symbol signature change can be drastic between ver to ver.


On Tue, Sep 27, 2011 at 3:51 PM, Chandrabhanu Mahapatra
<chandrabhanu.anand@gmail.com> wrote:
>
> I used cscope and vim editor but still I am only finding the usage of
> the above symbols but no definition.
> Are these symbols GCC builtin symbols or ARM specific symbols.
>
> On Mon, Sep 26, 2011 at 4:30 PM, Xu, Anhua <anhua.xu@intel.com> wrote=
:
> > Install your tools ctags and use it to track all the symbols in the=
 source.
> > google ctags, you will find solutions
> >
> > -----Original Message-----
> > From: linux-newbie-owner@vger.kernel.org [mailto:linux-newbie-owner=
@vger.kernel.org] On Behalf Of Chandrabhanu Mahapatra
> > Sent: Monday, September 26, 2011 6:22 PM
> > To: linux-newbie
> > Subject: Undefined Functions in use
> >
> > Where can I find the definition of TIMER_INITIALIZER, DECLARE_MUTEX=
,
> > DECLARE_MUTEX_LOCKED, softirq_vec,__builtin_constant_p, INIT_WORK,
> > etc.?
>
>
> --
> Chandrabhanu Mahapatra
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbi=
e" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
