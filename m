From: James & Tatiana Miller <jamtat@aaahawk.com>
Subject: Re: starting X with different XF86Configs
Date: Tue, 20 Aug 2002 10:39:17 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0208201031250.26541-100000@localhost.localdomain>
References: <000d01c24856$2b22e650$0200a8c0@toybox>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000d01c24856$2b22e650$0200a8c0@toybox>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux <linux-newbie@vger.kernel.org>

On Tue, 20 Aug 2002, Matthias Schweinoch wrote:

> don't know if this is considered a "bad approach", but another way to do
> this is to simply name your working XF86Config files appropriately and then
> just create a symlink to whichever file it is your using.
> 
Hmmm. This I don't understand. What would be the purpose of symlinking, 
and from where (i.e., what point in the Linux startup process) would the 
symlink get used? Are you talking about creating a symlink pointing to the 
desired XF86Config and calling it "XF86Config" each time I am preparing to 
start X? I can see how that would work, but it seems about the same amount of 
time and trouble as renaming XF86Configs each time I wish to start X. I 
guess I'm looking for a more elegant and less time-consuming solution. So 
far, Ray's looks best.

Thanks, James 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
