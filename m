From: Ken Moffat <ken@kenmoffat.uklinux.net>
Subject: Re: pdf file creation using Linux apps
Date: Sat, 1 Mar 2003 18:07:52 +0000 (GMT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0303011750230.28792-100000@ppg_penguin>
References: <Pine.LNX.4.44.0302281805200.9924-100000@vector>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0302281805200.9924-100000@vector>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

On Fri, 28 Feb 2003, James Miller wrote:

> 
> I have recently discovered the ability of certain Linux word processing
> apps to create pdf files. What I'm referring to here is the print to
> file feature, i.e. printing an OpenOffice or M$Word file to pdf. This is
> really useful for my work, and could save me plenty over the competing
> Adobe product:) . The ones I've used so far are KWord (what a flaky
> program!) and OpenOffice. When KWord can be operated with some degree of
> sanity, it seems to produce the most compatible pdf files. I'm reluctant
> to use it though: certain activities such as fiddling with the font type
> drop down menu have the disastrous effect of killing XWindows. Yes, merely
> glancing through that menu can cause X to simply obliterate, finally bringing
> me back to the login prompt (gpm, I think) when things return to normalcy.
> My comment on the flakiness of that app aside, what I'd really like to ask
> concerns the pdf's I've created with OpenOffice (1.0). They look and display
> fine under GV. But Adobe Acrobat Reader will not display them, claiming they
> are corrupt. Does anyone have any idea why this is so and/or any pointers on
> how to make Adobe be as happy with them as GV is?
> 

 There seems to be a range of partial-compliance between different
versions of pdf-aware packages.  I haven't tried Open Office yet, but
I've noticed that kde-3.1 (specifically, kghostview) needs the espgs
version of ghostscript, and even then it canot read occasional
documents such as a UK government "white paper" which was probably
created in Acrobat.  xpdf (using espgs) has so far read everything I've
tried,  but siag-office fails to read a lot of pdfs, and other packages
fail to read some of its pdfs.  My only advice is to have as wide a
range of options as you can for incoming pdfs.

Ken
-- 
 Out of the darkness a voice spake unto me, saying "smile, things could be
worse". So I smiled, and lo, things became worse.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
