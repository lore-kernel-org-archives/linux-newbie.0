From: ichi@ihug.co.nz
Subject: Re: Variable Quoting
Date: Wed, 16 Oct 2002 07:23:50 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DAD1406.12077252@ihug.co.nz>
References: <005201c273bb$594e0880$64fea8c0@pkrausxp> <1034698386.11967.13.camel@zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Furness <paul.furness@vil.ite.mee.com>
Cc: Paul Kraus <pkraus@pelsupply.com>, linux-newbie@jimmo.com, linux-newbie@vger.kernel.org

Paul Furness wrote:
> 
> Path="My Documents/"
> for FILENAME in ls "${Path}"
> do
>      cp "${Path}${Filename}" "/tmp"
> done

I think you mean:
----------------------------------
Path="My Documents/"
for FILENAME in `ls "${Path}"`
do
    cp "${Path}${FILENAME}" "/tmp"
done
----------------------------------
Note the changes in lines two and four.


Cheers,
Steven

______________________________
http://www.volny.cz/basiclinux

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
