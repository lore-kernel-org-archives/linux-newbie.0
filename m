From: G Anna <drguruolai@eth.net>
Subject: Re: trouble setting shell variable
Date: 26 May 2002 20:41:28 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <m3sn4f2bbz.fsf@wobble.eth.net>
References: <200205261406.g4QE6b9N012213@franklin.icok.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205261406.g4QE6b9N012213@franklin.icok.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Jim Reimer - WA5RRH <wa5rrh@arrl.net>
Cc: linux-newbie@vger.kernel.org


> Date: Sun, 26 May 2002 09:07:10 -0500
> From: Jim Reimer - WA5RRH <wa5rrh@arrl.net>
> Subj: trouble setting shell variable
> 
> I'm trying to rename files based on what time it is *now*....
> 
> echo `date` | cut -b 25-28,12-13,15-16,18-19

Why are you echoing?  Simply pass the output of date to cut.

> gives me what I want to use for the file name, but I
> can't figure out how to get it into a variable for use
> later in the script when I rename the file.  I've tried
> 
> variablename=

$ b=`date | cut -b 25-28,12-13,15-16,18-19`
$ echo $b
2038422002
$

HTHs

anna

-- 

(14) The  hero is not entitled to a last kiss, a last cigarette, or any
     other form of last request. - Peter Anspach in "The Top 100 Things
     I'd Do If I Ever Became An Evil Overlord"

                                            http://www.eviloverlord.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
