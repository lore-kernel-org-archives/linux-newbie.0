From: ichi@ihug.co.nz
Subject: Re: FSpecs
Date: Fri, 15 Nov 2002 14:43:13 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD50801.55ACE0D@ihug.co.nz>
References: <MSGID_110=3a20=2f1_50638fc8@linuxnet>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: BEN RITCHEY <linux-net@tcob1.net>
Cc: linux-newbie@vger.kernel.org

BEN RITCHEY wrote:
> 
> Would it be possible in a Bash script to munge a 
> Long File Name to the older DOS 8.3 format?
> In my case I need the first 8 characters and the 
> last 4 (.xxx) 

To which Paul Kraus replied:
> It would be a lot easier to do it with gawk or perl.

And hackob said:
> Use cut and/or gawk

Actually guys, all you need is bash:
--------------------------------------------------
example="long-filename.to.munge.txt"
echo ${example%${example#????????}}.${example##*.}
--------------------------------------------------

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
