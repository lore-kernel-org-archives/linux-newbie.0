From: Hal <haltec@kvinet.com>
Subject: Re: Writing/deleting NTFS files??
Date: Sun, 5 Nov 2006 10:03:24 -0500
Message-ID: <20061105150324.GA1138@lnx2.kvinet.com>
References: <20061102200743.GB1570@lnx2.kvinet.com> <bb529e40611030437yc2b0029k55367a72d8bc2473@mail.gmail.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <bb529e40611030437yc2b0029k55367a72d8bc2473@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

> >My daughter got into trouble with her XP machine so I offered to save
> >the files she wants, using a Linux CD, then re-installing..
> >
> >Trouble is; the needed files are bigger than my flash drive or Zip
> >disks so I thought I would delete some files known bad.. But Linux
> >kernel 2.6.11 or 2.6.13 cannot write to a NTFS drive; read only..
> >
> >Has this been changed or fixed, maybe with another kernel or
> >program?? Mounting the XP drive partition no problem..  Chmod doesn't
> >work of course.. :^(..
> >
> >Any suggestions.. TIA
> >
> >Best,
> >
> >--
> >
> >        Hal.

	Thank you Arthur, Bob, Chuck, James, Ray, Rob and Tommi for
the valid and excellent suggestions.. I spent a long time evaluating
and researching the various options and, bottom line, will use almost
all of them.. How do I get into situations like this??

	So far I've fetched RIP-15.1.isolinux.iso, with kernel 2.6.16
that has ntfsmount on board supporting writes.. Heretofore I was
trying with RIP-12.5, kernel 2.6.11 and Slackware 10-2 LiveCD, kernel
2.6.13; neither of which support ntfs writes.. Of course RIP is:
RecoveryIsPossible, and is a comprehensive development project based
on Slackware..

	Back to the drawing board I find that I was able to delete
most of the garbage but there are still some files and directories
that ntfsmount couldn't delete; "operation not permitted," even tho
the permissions were now "rw." At any rate I've gotten to where I can
work with it using some of the other recommendations..

	Unfortunately the subject Gateway case is too compact for two
HD's.. You can't win, eh??

	The main part of the project is solved anyway so APPRECIATE!
Long live Linux, the greatest... <grin>

Hal
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
