From: Ray Olszewski <ray@comarre.com>
Subject: Re: System Resource Management
Date: Mon, 30 Sep 2002 15:53:44 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20020930155037.02d35470@celine>
References: <004a01c268d0$64a0a0d0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D98D3C4.4070202@arrl.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

At 05:44 PM 9/30/02 -0500, Jim Reimer wrote:
>look at the man pages for 'nice' and 'top'
>
>-jdr-
>
>Paul Kraus wrote:
>>Is there a way to give a processes for cpu time? In nt you can set a
>>priority. Is there a way to see a list of processes based on the cpu
>>time they are using?

The other option (for the "list of processes" part of your question) is to 
use "ps" with appropriate options, then pipe the output through "sort", 
again with the appropriate options. As always, the appropriate man pages 
will supply the details I've left out.

Which option is more convenient depends on whether you want ongoing, 
real-time results of a snapshot saved to a file. "top" *can* do either, but 
I personally find "ps" piped to "sort" more convenient for redirecting to a 
file.


--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
