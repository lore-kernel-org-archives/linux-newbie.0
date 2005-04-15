From: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Subject: Re: convert windows file names
Date: Fri, 15 Apr 2005 20:17:35 +0200
Message-ID: <4260053F.7070709@vip.cybercity.dk>
References: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain> <425FDAA8.4060502@vip.cybercity.dk> <Pine.LNX.4.61.0504151126000.5717@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504151126000.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: James Miller <jamtat@mailsnare.net>

James Miller wrote:
> I tried your perl script and it works really well, Flemming. Thanks for 
> bringing it to my attention. I see it works for all files in a given 
> directory--exactly what I need. Now, in place of something like
> 
> Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -\ Quintet\ For\ Piano\ \&\ 
> Strings\ In\ D\ Major\,\ Op.565\,\ G411\ -.\ Andante\ Come\ Prima.mp3
> 
> I get
> 
> Patrick_Cohen__and__Mosaiques_Quartet_-_Quintet_For_Piano__and__Strings_In_D_Major._Op.565._G411_-._Andante_Come_Prima.mp3 
> 
> 
> --a big step in the right direction. But I'm still getting some wierd 
> characters in there-- and . Are these unicode or something? Anyway, 
> I can't reproduce these at the command line. Is there any way your 
> script might be made to catch and replace symbols like these as well (I 
> mean, for someone who knows absolutely nothing about Perl, and precious 
> little about scripting in general)? I have no idea what information 
> these symbols are supposed to be representing. It's probably so 
> inconsequential I don't even need it, so replacing it with virtually any 
> other symbol should suffice. I'd say I've got at least 20 files with 
> such symbols, and more are on the way.
> 
> Thanks, Jam
> es

This should remove the characters in question.

Replace the if-statement with this on:
	if ($new_name =~ m/(?:^[-+]|[^-\w.])/ ) {

and add this line below the other $new_name... lines:
		$new_name =~ s/[^-\w.]//g;

I have only tested this very little, but the corrections removes anything
that is not a hyphen (-), a word character (A-Za-z_) or a period (.).


-- 
Flemming Greve Skovengaard           FAITH, n.
a.k.a Greven, TuxPower                   Belief without evidence in what is told
<dsl58893@vip.cybercity.dk>              by one who speaks without knowledge,
4112.38 BogoMIPS                         of things without parallel.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
