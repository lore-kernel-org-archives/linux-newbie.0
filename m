From: whitnl73@juno.com
Subject: Re: smbprint
Date: Fri, 14 Feb 2003 20:15:49 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030214.215139.8.2.whitnl73@juno.com>
References: <15948.63078.810448.32226@ksys.rug.ac.be>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <15948.63078.810448.32226@ksys.rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kurt.sys@rug.ac.be
Cc: linux-newbie@vger.kernel.org

On Fri, 14 Feb 2003, Kurt Sys wrote:

> Hello,
>
> I try to get samba to work, especially the printing to a windows NT network printer. I can print to the printer by using smbprint etc, but this always takes some time (first 'gs -sDEVICE=ljet -sOutputFile=file.hp file.pdf' followed by 'smbclient \\\\labmetserver\\HPLaserJ -Ukurts%xxxxx' and finally giving the command 'print file.hp'). So, I decided to try to make an entry in my printcap-file (I show it here, although I'm sure that this doesn't matter for the problem I have...):

...
>
> And then I had to make two more files (these are the important ones, I guess):
> /var/spool/lpd/smb0/.config:
> ----
> server = LABMETSERVER
> service = HPLaserJ
> user = kurts
> password = "xxxxxx"
> ----
>
> and the file /usr/local/bin/smbprint:
> ----
> #!/bin/sh -x
>
> logfile=/tmp/smb-print.log
>
> eval acct_file=\$$#
>
> spool_dir=/var/spool/lpd/smb0
> config_file=$spool_dir/.config
>
> eval cat $config_file

Excuse me?  Why do you think this will set any shell variables?
This is just going to copy your config file to stdout.
See "help eval" and man cat.

I think you want something like

tn=`mktemp /tmp/x.XXXXXXX` && sed 's/ //g' $cf >$tn && source $tn && rm $tn
unset tn

AFAIK, the way to set a shell variable is: "name=value",
not "name = value", hence the sed
>
> Apparently, the variables 'server', 'service', 'user' and 'password' are not read (since they are replaced by nothing). What am I doing wrong?
>
why would cat be setting variables?
>
> thanks in advance,
> Kurt
> -
>
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
