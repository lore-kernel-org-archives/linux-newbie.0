From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: Re: smbprint
Date: Mon, 17 Feb 2003 12:25:19 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <15952.50847.868235.714886@ksys.rug.ac.be>
References: <15948.63078.810448.32226@ksys.rug.ac.be>
	<20030214.215139.8.2.whitnl73@juno.com>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030214.215139.8.2.whitnl73@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello,

tnx, it seems to work now, at least, the variables are set. 
Well, what I thought was: if you do 'cat $config_file', the config-file is 'shown', so I thought that the command 'eval cat $config_file' would result in:

eval server=LABMETSERVER service=HPLaserJ user=kurts passwd=XXXXX

and this would set the variables, no? I still don't understand why this is not ok...
Anyway, the spaces, that was clearly an error. I removed these...

tnx,
Kurt.



Mail from whitnl73@juno.com, sent on Friday February 14 2003 at 20:15 (GMT-0500): 

  > On Fri, 14 Feb 2003, Kurt Sys wrote:
  > 
  > >
  > > spool_dir=/var/spool/lpd/smb0
  > > config_file=$spool_dir/.config
  > >
  > > eval cat $config_file
  > 
  > Excuse me?  Why do you think this will set any shell variables?
  > This is just going to copy your config file to stdout.
  > See "help eval" and man cat.
  > 
  > I think you want something like
  > 
  > tn=`mktemp /tmp/x.XXXXXXX` && sed 's/ //g' $cf >$tn && source $tn && rm $tn
  > unset tn
  > 
  > AFAIK, the way to set a shell variable is: "name=value",
  > not "name = value", hence the sed
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
