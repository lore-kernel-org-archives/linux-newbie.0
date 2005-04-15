From: chuck gelm <chuck@gelm.net>
Subject: Re: convert windows file names
Date: Fri, 15 Apr 2005 14:00:53 -0400
Message-ID: <42600155.60209@gelm.net>
References: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:
<snip>

> But, on to file names. unfortunately, the names for the pieces I'm 
> recording from this station follow Windows long-file-naming conventions. 
> Even worse, the names tend to be quite complex and long. Here are a 
> couple of examples:
> 
> Anton\ Reicha-\ Albert\ Schweitzer\ Quintett\ -\ Wind\ Quintet\ No.9\ 
> in\ D\ major\ Op.91\ No.3-\ Finale-\ Allegretto.mp3
> 
> Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -\ Quintet\ For\ Piano\ \&\ 
> Strings\ In\ D\ Major\,\ Op.56??5\,\ G411\ -??.\ Andante\ Come\ Prima.mp3
> 
> Feeding those names to cat so I can join the movements into a single 
> file is going to be a major pain in the wazoo, as they say down at 
> symphony hall. What I was hoping to find is a script that would 
> automatically convert all the wierd characters into more standard Unix 
> file-naming characters. But so far I've come up empty-handed. Can anyone 
> point me to some utility that might do what I need?
> 
> As a last resort, I might try to write my own script. I'm not too hot on 
> doing that though, since I'm at an extremely rudimentary level when it 
> comes to script writing. If it comes to that, could someone maybe help 
> me get started by giving an example for a script that would do the 
> renaming I want? I'd like to retain the bulk of the information, though 
> I don't mind truncating words at, say 5 letters. I suppose the main 
> thing would be replaing all the spaces and/or punctuation with dashes 
> and/or underscores.
> 
> Thanks, Jam
> es

man rename
...
rename " " "_" * # over and over again. ;-)

HTH, Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
