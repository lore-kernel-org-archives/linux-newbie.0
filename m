From: ichi@ihug.co.nz
Subject: Re: what's ${1##*/}
Date: Sat, 21 Dec 2002 14:52:45 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E04803D.D79BC7E@ihug.co.nz>
References: <20021221084841.659D.WOLFGANG127JP@ybb.ne.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: wolfgang <wolfgang127jp@ybb.ne.jp>
Cc: linux-newbie@vger.kernel.org

wolfgang wrote:
> 
> I found the statement below in killproc() of 
> /etc/init.d/functions script.
> 
> base=${1##*/}

This is a bash structure used to remove parts of a 
variable.  The variable is $1.  The ##*/ means that 
everything before the last / is removed.  Therefore,
if $1 is the full pathname of a file, $base will be
the filename (without the path).

Cheers,
Steven

______________________________
http://www.volny.cz/basiclinux

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
