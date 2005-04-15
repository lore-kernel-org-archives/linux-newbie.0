From: James Miller <jamtat@mailsnare.net>
Subject: Re: convert windows file names
Date: Fri, 15 Apr 2005 14:29:04 -0500 (CDT)
Message-ID: <Pine.LNX.4.61.0504151424570.5717@localhost.localdomain>
References: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
 <425FDAA8.4060502@vip.cybercity.dk> <Pine.LNX.4.61.0504151126000.5717@localhost.localdomain>
 <4260053F.7070709@vip.cybercity.dk>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4260053F.7070709@vip.cybercity.dk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

Thanks for offering that, Flemming. Modifying the original script per your 
directions does, indeed, seem to get rid of the other extraneous 
characters. I ran it in a test directory, and the results seem to get just 
what I was hoping for. I think I'll go ahead and run it in the real 
directory now, where I have probably a couple hundred files in need of 
renaming. Great work!

Thanks, James

On Fri, 15 Apr 2005, Flemming Greve Skovengaard wrote:

> This should remove the characters in question.
>
> Replace the if-statement with this on:
> 	if ($new_name =~ m/(?:^[-+]|[^-\w.])/ ) {
>
> and add this line below the other $new_name... lines:
> 		$new_name =~ s/[^-\w.]//g;
>
> I have only tested this very little, but the corrections removes anything
> that is not a hyphen (-), a word character (A-Za-z_) or a period (.).
>
>
> -- 
> Flemming Greve Skovengaard           FAITH, n.
> a.k.a Greven, TuxPower                   Belief without evidence in what is 
> told
> <dsl58893@vip.cybercity.dk>              by one who speaks without knowledge,
> 4112.38 BogoMIPS                         of things without parallel.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
