From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: Text Reformatting
Date: Tue, 20 May 2003 02:59:28 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EC9FC80.7070407@bcgreen.com>
References: <20030520024710.972F9103B1@pfheiss>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030520024710.972F9103B1@pfheiss>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Peter <pfheiss@philonline.com>
Cc: linux-newbie@vger.kernel.org

Peter wrote:
> Thanks Stephen,
> 
> sed 's/^[ \t]+//' file does not work, it changes nothing.
> 
> 
> samuel@bcgreen.com said:
> 
>>Note that when you do the " tr [options] > somefile | fmt [options]
>>somefile" , you're losing any advantage of using a pipe. 
> 
> 
> Well taken tip!
> 
> Regards

Grr... I forgot the backslash before the '+'   That should be:

sed 's/^[ \t]\+//' file

(you could also do
	sed 's/^[ \t]*//' file


The '+' construct is (technically) a bit more efficient -- it won't
do a  null replacement for an unindented line.  It is, however, an
extended pattern and I sometimes worry about it's portability to
older (non-gnu) versions of sed. Ha! but never mind! Even that \t
turns out not to be portable to BSD. you need to have the literal
'tab' character.  It turns out that the most portable form is:

sed 's/^[ 	]*//' file
(with a space and a tabe between the sqquare brackets).  You might
need to do a ctrl-v o get bash to accept the tab caracter.

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
Powerful committed communication, reaching through fear, uncertainty and
doubt to touch the jewel within each person and bring it to life.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
