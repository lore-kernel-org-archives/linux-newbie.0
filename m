From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: bash script problem
Date: Tue, 10 Dec 2002 16:19:07 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DF65A4B.E53E6BE4@gelm.net>
References: <3DF54C86.7070908@vtown.com.au> <3DF61C86.51C4AD34@ihug.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Check this bash script for me, please.

#/bin/sh
#
# if a floppy can be formatted 1.68 megabytes
#    with 0 bad blocks
# else
#    format 1.44 megabytes
# fi
# mkfs.msdos /dev/fd0
#
if   (superformat /dev/fd0u1680 && badblocks -c 512 -n /dev/fd0u1680);
then
     mkfs.msdos /dev/fd0u1680
else superformat /dev/fd0u1440 
     mkfs.msdos /dev/fd0u1440
fi
mdir
#

 I'm thinking that 'badblocks' can find bad blocks and still return
a 'true' condition.  If this is true, is there any way to cause
the smaller format?

 If 'superformat /dev/fd0u1680' fails, it drops back to '/dev/fd0u1440'.

Regards, Chuck
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
