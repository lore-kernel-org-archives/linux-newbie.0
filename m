From: Peter <pfheiss@philonline.com>
Subject: Re: Groff Print-out
Date: Sun, 13 Oct 2002 16:48:59 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210130848.g9D8mx201981@philonline.com>
References: <Pine.LNX.4.44.0210121215380.179-100000@darkstar.example.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Sat, 12 Oct 2002 12:48:18 -0400."
             <Pine.LNX.4.44.0210121215380.179-100000@darkstar.example.net> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Kurt Kehler <kmk@pa.net>, linux-newbie@vger.kernel.org

Thanks Kurt!

Peter said:
> Groff has 2 drawbacks, a) it does not number the pages and b) does
> barely  advance at the end of the page. 


kmk@pa.net said:
> Try: groff -ms file | lpr

That works fine. I have to use dos2unix first otherwise I get for every line:
...
sseas10.txt:9947: warning: illegal input character code 13
...
before its put into the print queue.

Regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
