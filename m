From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Tar Backups
Date: Mon, 30 Sep 2002 20:12:53 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <02093020125307.00233@unix.pa3gcu>
References: <5.1.0.14.1.20020930123403.02c7c350@celine>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20020930123403.02c7c350@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>, Paul Kraus <pkraus@pelsupply.com>, linux-newbie@vger.kernel.org

On Monday 30 September 2002 19:39, Ray Olszewski wrote:
> At 03:21 PM 9/30/02 -0400, Paul Kraus wrote:
> >Is there a way to have an index written? I am making 13gb backups and it
> >takes forever to simply restore because it has to read each and every
> >single file on the tape. This is actually on my sco box but the question
> >is relevant because I plan on moving the file server to a red hat
> >machine.
>
> Do you mean that you want to use tar to make a tape backup, and at the same
> time write a separate file that contains a list of all of the files on the
> tape?
>
> If you do mean that ... then just run tar in verbose mode and redirect the
> output to a file. Something like this (though this example saves to a .tar
> file rather than tape):
>
>          tar -cvf somename.tar filespec > index.txt
>
> If you mean something more specific by "index", please describe in more
> detail what you need.

A good suggestion Ray, but what beats me is the "askers" signature,

Quote;

"
Paul Kraus
Network Administrator
PEL Supply Company
216.267.5775 Voice
216-267-6176 Fax
www.pelsupply.com
"
Network Admin ????? and he needs to ask this.!!!!

Several mails a day and if i may say so most of the questions are solvable 
with a simple reading of the manuals.

One would think, if one is a Network Administrator, then he/she would know 
about simple things which are asked here.
Well i suppose someone will do his work for him then, at least he is getting 
paid for the answers he gets here, note, but not from me, i have to earn my 
money.

>
>
> --
> -------------------------------------------"Never tell me the
> odds!"-------- Ray Olszewski					-- Han Solo
> Palo Alto, California, USA			  ray@comarre.com
> ---------------------------------------------------------------------------
>----

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
