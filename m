From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Burning iso to disk
Date: Thu, 13 Mar 2003 15:58:57 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03031315585702.09029@unix.pa3gcu>
References: <200303131021.45642.sotl155360@earthlink.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200303131021.45642.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frank Roberts - SOTL <sotl155360@earthlink.net>, Linux Newbie <linux-newbie@vger.kernel.org>

On Thursday 13 March 2003 15:21, Frank Roberts - SOTL wrote:

>
> The command line command used was:
> cdrecord -dev=0,2,0 -speed=12 -data MandrakeLinux-9.1rc2-CD1.i586.iso

I normally use;

cdrecord -eject dev=1,0,0 speed=12  -isosize -pad name.iso

Adjust -dev= accordingly.


> Thanks
> Frank

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
