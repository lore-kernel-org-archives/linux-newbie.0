From: ichi@ihug.co.nz
Subject: Re: Mandrake 8.1??
Date: Fri, 07 Mar 2003 12:40:59 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E68935B.455D0AC8@ihug.co.nz>
References: <Pine.LNX.4.44.0303061550280.9924-100000@vector>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailandnews.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

James Miller wrote:
> 
> dragging the mouse cursor to the edge of the screen causes 
> the screen to shift in that direction, making what was cut 
> off at that edge visible (while at the same time cutting 
> things off at the opposite edge). 
> I like this feature of "virtual resolution", and would like 
> to understand better how it works and how to tweak/set it up. 

See /etc/XF86Config, subsection Display
---------------
Depth 4
Modes "640x480"
Virtual 800 600
---------------
This example provides a virtual 800x600 display on a 
generic VGA screen.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
