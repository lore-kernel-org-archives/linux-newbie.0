From: Ray Olszewski <ray@comarre.com>
Subject: Re: FSpecs
Date: Thu, 14 Nov 2002 18:57:14 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021114185333.020ca1d0@celine>
References: <MSGID_110=3a20=2f1_50638fc8@linuxnet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DD50801.55ACE0D@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

All the approaches suggested for this exercise assume that one need not 
worry about generating a UNIQUE 8.3 filename from the long filename. Is 
that assumption appropriate to Ben's real, underlying problem? Or does it 
risk overwriting a file with a later one (e.g., shortnam-abcd.txt and 
shortnam-efgh.txt both become shortnam.txt)?

At 02:43 PM 11/15/02 +0000, ichi@ihug.co.nz wrote:
>BEN RITCHEY wrote:
> >
> > Would it be possible in a Bash script to munge a
> > Long File Name to the older DOS 8.3 format?
> > In my case I need the first 8 characters and the
> > last 4 (.xxx)
>
>To which Paul Kraus replied:
> > It would be a lot easier to do it with gawk or perl.
>
>And hackob said:
> > Use cut and/or gawk
>
>Actually guys, all you need is bash:
>--------------------------------------------------
>example="long-filename.to.munge.txt"
>echo ${example%${example#????????}}.${example##*.}
>--------------------------------------------------




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
