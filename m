From: kari Hurtta <hurtta+z1@leija.mh.fmi.fi>
Subject: Re: reading links in proc - permission denied
Date: Mon, 16 Jun 2003 09:19:28 +0300 (EEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306160619.h5G6JS7S010990@leija.fmi.fi>
References: <000b01c332b7$44c68250$1403a8c0@sc.tlinx.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000b01c332b7$44c68250$1403a8c0@sc.tlinx.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "linda w." <linux-newbie@tlinx.org>
Cc: 'Kari Hurtta' <hurtta+z1@leija.mh.fmi.fi>, linux-newbie@vger.kernel.org

> 
> 
> > -----Original Message-----
> > From: hurtta@leija.mh.fmi.fi [mailto:hurtta@leija.mh.fmi.fi]
> > Are you sure that 'top' uses that 'exe' ?
> ---
> 	Not at all...in fact was told it doesn't.  Apparently, though,
> the listed permissions on the links are arbitrary and the system
> fairly well ignores them.
> 
> 	I vaguely remember someone once saying that even if a symlink
> had permissions lrxw------, it could still be used by group and
> others.  I don't know if that was or is still true -- certainly doesn't
> seem consistent, but when dealing with computer systems made by
> many different humans, inconsistency seems inevitable -- even when
> made by 1 human, that person can be inconsistent over time.
> 
> 	And people wonder why computer security is so hard to 'get right'.

For _following_ symlink, permissions of symlink are not checked
(at least not checked 'traditiomally' on unix -- I do not know about Linux.)


On some systems for reading value of symlink if symlink is on NFS server,
permissions of symlink are checked.


I actually do not know is permissions of symlink checked (on various OSes)
if sysmlink value is readed.


/ Kari Hurtta
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
