From: Karthik Vishwanath <karthik@northstar.dartmouth.edu>
Subject: Re: VI Problems
Date: Sun, 14 Apr 2002 02:44:29 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.SGI.3.91.1020414024323.24713A-100000@angstrom.dartmouth.edu>
References: <000701c1e36d$75c63930$0100a8c0@study>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000701c1e36d$75c63930$0100a8c0@study>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Matt Grill <matt.grill@bigpond.com>
Cc: linux-newbie@vger.kernel.org

On Sun, 14 Apr 2002, Matt Grill wrote:

> 2) How would you change all instances of multiple consecutive spaces to
> a single space in vi?

:%s/\s\+/ /g

> 
> 3) How do you search for a word without regard to use of uppercase or
> lowercase letters?
> 

:set ignorecase


-Karthik.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
