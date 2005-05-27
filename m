From: Rhys Hardwick <linux-newbie@rhyshardwick.co.uk>
Subject: Re: Change permissions of files to -xw +r for all other users
Date: Fri, 27 May 2005 18:17:45 +0100
Message-ID: <200505271817.45798.linux-newbie@rhyshardwick.co.uk>
References: <Pine.LNX.4.21.0505262239430.1464-100000@hestia>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0505262239430.1464-100000@hestia>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> Hope that helped...
>
> J.
>

Gotcha, thanks for the help.  I did figure out that bit, it was the part about 
only selecting files, so when I -x 'd them, I wouldn't take list privileges 
away from the directories.  

Thanks,

Rhys

	
	
		
___________________________________________________________ 
Yahoo! Messenger - NEW crystal clear PC to PC calling worldwide with voicemail http://uk.messenger.yahoo.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
