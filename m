From: Paul Furness <paul.furness@vil.ite.mee.com>
Subject: RE: need method of backing up files
Date: 18 Nov 2002 12:08:32 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1037621312.366.39.camel@zebra.vil.ite.mee.com>
References: <05bb01c2876f$0104b300$64fea8c0@pkrausxp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <05bb01c2876f$0104b300$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

I don't know of a way to make it put the machine name at the beginning
of each line. 

As a partial solution, you could put the machine name into the log file
before the copy:

  echo ${machinename} >> $log
  cp --preserve ..... and so on.

I tend to put a lot of date stamps in log files as well as some
comments. It doesn't make much difference to the file size, and it can
be very useful information later, and also make the log file much easier
to read. I tend to do something like this:

  echo "Starting the backup of ${machinename} at `date`" >> $log
  cp --preserve .....

P.


On Fri, 2002-11-08 at 21:37, Paul Kraus wrote:
> How can I add the machine name to the output. For instance...
> This command writes to the log file that a file is in use and was not
> backed up.
> 
> cp --preserve --recursive --update "$source"/* $dest 2>> $log
> 
> So if I have a variable called $machine and it equals the workstations
> name how can I have it written before the log entry.
> 
> Example
> Myworkstation: output from errors out.
> 
> Thanks in advance,
> Paul Kraus
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
-- 
Paul Furness

Systems Manager

Steepness is an illusion caused by flat things leaning over.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
