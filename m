From: "Paul Kraus" <pkraus@pelsupply.com>
Subject: RE: need method of backing up files
Date: Fri, 8 Nov 2002 16:37:14 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <05bb01c2876f$0104b300$64fea8c0@pkrausxp>
References: <1036769889.20840.92.camel@zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1036769889.20840.92.camel@zebra.vil.ite.mee.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: 'Paul Furness' <paul.furness@vil.ite.mee.com>
Cc: linux-newbie@vger.kernel.org

How can I add the machine name to the output. For instance...
This command writes to the log file that a file is in use and was not
backed up.

cp --preserve --recursive --update "$source"/* $dest 2>> $log

So if I have a variable called $machine and it equals the workstations
name how can I have it written before the log entry.

Example
Myworkstation: output from errors out.

Thanks in advance,
Paul Kraus

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
