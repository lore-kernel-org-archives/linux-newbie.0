From: Peter <pfheiss@philonline.com>
Subject: Re: Text Reformatting
Date: Tue, 20 May 2003 10:47:05 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030520024710.972F9103B1@pfheiss>
References: <3EC8FBCD.1030804@bcgreen.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Mon, 19 May 2003 08:44:13 MST." 
 <3EC8FBCD.1030804@bcgreen.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Stephen Samuel <samuel@bcgreen.com>, linux-newbie@vger.kernel.org

Thanks Stephen,

sed 's/^[ \t]+//' file does not work, it changes nothing.


samuel@bcgreen.com said:
> Note that when you do the " tr [options] > somefile | fmt [options]
> somefile" , you're losing any advantage of using a pipe. 

Well taken tip!

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
