From: Ray Olszewski <ray@comarre.com>
Subject: Re: Apache user?
Date: Thu, 03 Oct 2002 23:34:47 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021003232435.02547830@celine>
References: <000001c26b67$1a178df0$4b01a8c0@offline>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <000001c26b67$1a178df0$4b01a8c0@offline>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Chris Rose <offline@shaw.ca>, 'Linux-Newbie' <linux-newbie@vger.kernel.org>

At 11:30 PM 10/3/02 -0600, Chris Rose wrote:
>In my old system, i think Apache was configured to run as root, but i'm
>not sure.  Either way, though, all the files in my httpdocs directory
>are root:root owned, mostly chmod 666:-rw-rw-rw-
>
>In my Apache 2.0 httpd.conf it's set to user:group apache:apache.
>Should i chown all the files?

If they are "mostly" mode 666 (any cgi scripts are probably 777, since they 
need to be executable), it hardly matters who owns them, since anyone can 
read or write them.

The usual way to run Apache (reasonably) securely is:

         A. to run it as a very unprivileged user (a "nobody"-like account 
... your "apache" is probably this)
         B. to have the files and directories it accesses owned by a 
different user (I usually create an account www-data for this purpose).
         C. to make the files mode 644 for data, 755 for executable scripts 
and directories


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
