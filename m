From: Jim Nelson <james4765@cwazy.co.uk>
Subject: Re: smtp alternatives
Date: Sat, 12 Feb 2005 13:48:18 -0500
Message-ID: <420E4F72.7090602@cwazy.co.uk>
References: <Pine.LNX.4.58.0502121224530.14569@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
In-Reply-To: <Pine.LNX.4.58.0502121224530.14569@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:
> In setting up a system for a friend (Mepis installation) and finding him a
> cheap ISP (dialin), I've discovered his provider does not run an smtp
> server. So, I'm looking for alternatives so he'll be able to send mail
> from his machine. I've always only ever used smtp, and it's the only sort
> of mail transport scheme I can profess to have much of a grasp on (how it
> works, how to set it up). I've heard about things like sendmail and maybe
> qmail: aren't these alternatives for someone who can't, or doesn't want
> to, use an smtp server? Should I be looking to these as potential
> solutions to the problem of not having access to an smtp server? Are there
> other alternatives for sending email? I think I've heard that mail not
> sent through an smtp server has a greater chance of getting blocked by
> spam filters: is this true? Feedback on this query will be appreciated.
> 
> Thanks, James
> 

You absolutely have to send mail through a smtp server, or it doesn't get to the 
addresee.  This ISP has one, they just don't let customers connect directly to it. 
  Check and see if they have a POP3 or IMAP server set up - the settings that they 
have for Outlook are the closest to the ones that Mozilla and Epiphany use.

Failing that, you'll have to find third-party email (if all they offer is a 
web-based interface, etc).  cwazy.co.uk isn't bad - I just had to go across the 
pond to get it (I'm American, but this was the best no-frills POP3 system I found, 
since my ISP was really boneheaded about non-US email).
Jim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
