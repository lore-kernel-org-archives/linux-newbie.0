From: ichi@ihug.co.nz
Subject: Re: bash script problem
Date: Tue, 10 Dec 2002 16:55:34 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF61C86.51C4AD34@ihug.co.nz>
References: <3DF54C86.7070908@vtown.com.au>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Peter Cavanagh <nofsk@vtown.com.au>
Cc: linux-newbie@vger.kernel.org

Daniel Peter Cavanagh wrote:
> 
> I'd like to write a script that will run a command, 
> and if successful run another command otherwise echo 
> a message.

How about this:
------------------------------------
fetchmail -su nofsk pop.vtown.com.au
case $? in 0) pine;;
           *) echo failed fetch;;
esac
------------------------------------ 

Cheers,
Steven


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
