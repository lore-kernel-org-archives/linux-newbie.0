From: Amin <raihan@citech-bd.com>
Subject: Re: man page formatting problem?
Date: Thu, 22 May 2003 23:29:21 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1271.1053624561@localhost.localdomain>
References: <samuel@bcgreen.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Message from Stephen Samuel <samuel@bcgreen.com> 
   of "Thu, 22 May 2003 05:35:24 MST." <3ECCC40C.3020605@bcgreen.com> 
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

In message <3ECCC40C.3020605@bcgreen.com>, Stephen Samuel writes:
> try
> 
> export LC_ALL=C
> 
> it seems to be a locale problem with man

Thanks --- it worked.  I've put that line into my
``.bash_profile''.  And I've also looked at the man page for
``setlocale''.  Just for kicks, I set LC_ALL to
``en_US.utf8''.  xterm messed up the dashes, so I set it
back to ``C''.  The dashes were perfect.  So, thanks,
although I'm just a little bemystified :-) about the whole
locale thing.

Yawar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
