From: ichi@ihug.co.nz
Subject: Re: inverting a list
Date: Sun, 21 Jul 2002 12:31:32 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D3AA9A4.AD7C28E@ihug.co.nz>
References: <20020720.175417.-315329.2.matthewstapleton@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Matthew Stapleton <matthewstapleton@juno.com>
Cc: linux-newbie@vger.kernel.org

Matthew Stapleton wrote:
> 
> Can I use linux text utilities to invert the lines of 
> a text file?  Say that the lines of the file are 50.  
> (1,2, ...50)  How can I change the order the of lines 
> so that line 1 is now line 50?

Here's one off the top of my head.  I'm sure 
that somebody can come up with a better one.
---------------------------
#!/bin/bash
i=`cat $1|wc -l`
until [ $i = 0 ]
do head -n $i $1|tail -n 1
let i=i-1
done
---------------------------

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
