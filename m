From: whitnl73@juno.com
Subject: Re: dynamic linker?
Date: Tue, 28 Jan 2003 22:32:43 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030129.113817.134688608.3.whitnl73@juno.com>
References: <3E365FDB.1080502@rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E365FDB.1080502@rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kurt.sys@rug.ac.be
Cc: linux-newbie@vger.kernel.org

On Tue, 28 Jan 2003, Kurt Sys wrote:

> Hi,
>
>
> Here follows a problem I ran into. I tried to use an 'old' software
> package cellstat. I got the package as a '.tar.gz', but it didn't seem
> to unpack properly (tar xvfz cellstat_linux.tar.gz):
>
> --
> drwxr-xr-x 3007/30           0 1996-12-10 14:55:00 bin/
> -rwxr-xr-x 3007/30       81430 1996-06-26 12:35:30 bin/xshow
> -rwxr-xr-x 3007/30       49152 1996-04-25 10:41:12 bin/cellstat
> -rwxr-xr-x 3007/30       20656 1996-12-10 14:55:00 bin/hips2tiff
> -rwxr-xr-x 3007/30       24843 1996-12-10 14:55:00 bin/tiff2hips
> drwxr-xr-x 3007/30           0 1996-11-19 10:54:01 doc/
> -rw-r----- 3007/30        2326 1996-11-19 10:53:16 doc/README
> -rw-r--r-- 3007/30        1175 1996-11-19 10:53:16 doc/cellstat.cfg
> -rw-r----- 3007/30        3347 1996-11-19 10:53:16 doc/cellstat.n
> -rw-r--r-- 3007/30        1692 1996-11-19 10:53:16 doc/hips2tiff.n
> -rw-r--r-- 3007/30        1107 1996-11-19 10:53:16 doc/tiff2hips.n
> -rw-r----- 3007/30        3456 1996-11-19 10:53:16 doc/xshow.n
> drwxr-xr-x 3007/30           0 1996-12-10 14:53:28 samples/
> drwxr-xr-x 3007/30           0 1996-11-19 10:54:22 samples/smo522/
> -rw-r--r-- 3007/30         345 1996-12-10 14:53:05 samples/smo522/README
> -rw-r--r-- 3007/30     2097244 1996-12-10 14:53:07
> samples/smo522/smo522.hips
>
> gzip: stdin: invalid compressed data--format violated
> tar: Unexpected EOF in archive
> tar: Unexpected EOF in archive
> tar: Error is not recoverable: exiting now
> --
>
> OK, so far, some trouble, but I got the program itself and I copied it
> into '/usr/local/bin' (as it was recommended by the authors). I thought
> everythin would be ok, since I think the error only occurs with the
> samples, and the bins and docs are uncompressed properly.
>
>
> If i try to run the program (cellstat), I get the following:
>
> --
> cellstat: can't load dynamic linker '/lib/ld.so nor
> /usr/i486-linux/lib/ld.so'
> --
>
> I tried to make a link to ld-2.3.1.so (ln -s ld-2.3.1.so ld.so), but
> this didn't seem to change anything. I would like to know what's going
> on... and it would be even nicer if it's possible to solve this problem.
>
>
>
> thanks a lot in advance,
>
> Kurt Sys.
>
> -
Links don't mean anything until root has run /sbin/ldconfig.

Lawson

--
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
