From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: Tar Backups
Date: Mon, 30 Sep 2002 16:35:36 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <003901c268c0$ef7a3b90$64fea8c0@pkrausxp>
References: <02093020125307.00233@unix.pa3gcu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <02093020125307.00233@unix.pa3gcu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: pa3gcu@zeelandnet.nl, linux-newbie@vger.kernel.org

First of all I am not a UNIX or Linux admin. I had two servers dumped on
me and have been struggling for 2 weeks to get some of the more basic
shit down. Which is WHY I AM POSTING ON A NEWBIE LIST!Why the hell are
you attacking someone on a newbie list. I did read the man pages and I
had already read / learned about redirecting the output. If you had read
my next message you would have seen that. I am asking if there was a
work around for a serious limitation of tape backups using the standard
unix/linux tar application. Perhaps you where just trying to impress
people on the list. That's the problem with 99% of news groups/ mailing
lists that have to do with Linux or Unix for that matter. Its like an
elitist club. Ask the wrong question and everyone is on your shit. By
the way no one has yet to solve this simple question that anyone should
have been able to answer by reading the man pages.


PS
You're an ASS pa3gcu.

-----Original Message-----
From: pa3gcu [mailto:pa3gcu@zeelandnet.nl] 
Sent: Monday, September 30, 2002 4:13 PM
To: Ray Olszewski; Paul Kraus; linux-newbie@vger.kernel.org
Subject: Re: Tar Backups


On Monday 30 September 2002 19:39, Ray Olszewski wrote:
> At 03:21 PM 9/30/02 -0400, Paul Kraus wrote:
> >Is there a way to have an index written? I am making 13gb backups and

> >it takes forever to simply restore because it has to read each and 
> >every single file on the tape. This is actually on my sco box but the

> >question is relevant because I plan on moving the file server to a 
> >red hat machine.
>
> Do you mean that you want to use tar to make a tape backup, and at the

> same time write a separate file that contains a list of all of the 
> files on the tape?
>
> If you do mean that ... then just run tar in verbose mode and redirect

> the output to a file. Something like this (though this example saves 
> to a .tar file rather than tape):
>
>          tar -cvf somename.tar filespec > index.txt
>
> If you mean something more specific by "index", please describe in 
> more detail what you need.

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

Several mails a day and if i may say so most of the questions are
solvable 
with a simple reading of the manuals.

One would think, if one is a Network Administrator, then he/she would
know 
about simple things which are asked here.
Well i suppose someone will do his work for him then, at least he is
getting 
paid for the answers he gets here, note, but not from me, i have to earn
my 
money.

>
>
> --
> -------------------------------------------"Never tell me the
> odds!"-------- Ray Olszewski					-- Han
Solo
> Palo Alto, California, USA			  ray@comarre.com
> 
>-----------------------------------------------------------------------
----
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
