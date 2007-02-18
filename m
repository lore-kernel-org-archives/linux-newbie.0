From: Jim Reimer <jdr@wa5rrh.us>
Subject: Re: FTP Script - TOTAL NEWBIE HERE!!!
Date: Sun, 18 Feb 2007 09:06:31 -0600
Message-ID: <19059202812.20070218090631@wa5rrh.us>
References: <8991524.post@talk.nabble.com>
Reply-To: Jim Reimer <jdr@wa5rrh.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <8991524.post@talk.nabble.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: flyfshmn <flyfshmn@carolina.rr.com>
Cc: linux-newbie@vger.kernel.org

flyfshmn wrote:


> At this point - I can manully make this happen. What I dont know is how do I
> create a script that will automatically insert file name (may use mput *.*),
> verify the success and then delete the file. I will not have access to snmp
> traps to actually know if the file was successful, but at least if it fails,
> then it wont be deleted. The files that are created have the current date as
> part of the file name, so this info may be useful for the variable for the
> put.

What is the form of the filename?  Is it the newest file in the
directory?  Does the date in the file name match the system date
(I.E. is the date in the file name "today" or "yesterday" or what)?

-- 
-jdr-

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
