From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: Re: Variable Quoting
Date: 16 Oct 2002 11:51:30 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1034765490.2709.1.camel@zebra.vil.ite.mee.com>
References: <005201c273bb$594e0880$64fea8c0@pkrausxp>
	<1034698386.11967.13.camel@zebra.vil.ite.mee.com> 
	<3DAD1406.12077252@ihug.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DAD1406.12077252@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ichi@ihug.co.nz
Cc: linux-newbie@jimmo.com, linux-newbie@vger.kernel.org

Oops. <looks sheepish> I did indeed mean for both instances of the word
"Filename" to be in the same case.
<sigh> I must be getting old; either that or I'm not drinking enough
coke.

Apologies if I caused any confusion. :)

P.

On Wed, 2002-10-16 at 08:23, ichi@ihug.co.nz wrote:
> Paul Furness wrote:
> > 
> > Path="My Documents/"
> > for FILENAME in ls "${Path}"
> > do
> >      cp "${Path}${Filename}" "/tmp"
> > done
> 
> I think you mean:
> ----------------------------------
> Path="My Documents/"
> for FILENAME in `ls "${Path}"`
> do
>     cp "${Path}${FILENAME}" "/tmp"
> done
> ----------------------------------
> Note the changes in lines two and four.
> 
> 
> Cheers,
> Steven
> 
> ______________________________
> http://www.volny.cz/basiclinux
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

2+2=5 for extremely large values of 2.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
