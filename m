From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: how to assess occupied space
Date: Sun, 15 Sep 2002 08:12:22 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209151212.g8FCCMF10511@hartford-hwp.com>
References: <Pine.LNX.4.33.0209150039410.15231-100000@router.windsormachine.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <Pine.LNX.4.33.0209150039410.15231-100000@router.windsormachine.com>
	(message from Mike Dresser on Sun, 15 Sep 2002 00:40:38 -0400 (EDT))
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: mdresser_l@windsormachine.com
Cc: revobild@revobild.net, linux-newbie@vger.kernel.org

Mike,

While du will provide that, you might want to control its output. I
put together a little command to pin down an enormous file, the name
and location of which I did not know. I've not used it enough to know
how reliable it is:

du -a <path and target directory> | sort -nr | head

This includes directories to help me locate the bloated file. The
output is sorted by size in reverse order, and that output is limited
to the ten biggest files. 

Haines Brown  
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
