From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: smbprint
Date: Fri, 14 Feb 2003 15:00:06 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <15948.63078.810448.32226@ksys.rug.ac.be>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello,

I try to get samba to work, especially the printing to a windows NT network printer. I can print to the printer by using smbprint etc, but this always takes some time (first 'gs -sDEVICE=ljet -sOutputFile=file.hp file.pdf' followed by 'smbclient \\\\labmetserver\\HPLaserJ -Ukurts%xxxxx' and finally giving the command 'print file.hp'). So, I decided to try to make an entry in my printcap-file (I show it here, although I'm sure that this doesn't matter for the problem I have...):

----
smb0|SMB.HP.LJ4.normal.1:\
        :cm=HP LaserJet 4 computerlokaal:
        :lp=/dev/smb0:\
        :sd=/var/spool/lpd/smb0:\
        :af=/var/spool/lpd/smb0/acct:\
        :mx#0:\
        :if=/usr/local/bin/smbprint
----

And then I had to make two more files (these are the important ones, I guess): 
/var/spool/lpd/smb0/.config:
----
server = LABMETSERVER
service = HPLaserJ
user = kurts
password = "xxxxxx"
----

and the file /usr/local/bin/smbprint:
----
#!/bin/sh -x

logfile=/tmp/smb-print.log

eval acct_file=\$$#

spool_dir=/var/spool/lpd/smb0
config_file=$spool_dir/.config

eval cat $config_file

echo "server $server, service $service" >> $logfile

(
echo translate
echo "print -"
cat
) | /usr/bin/smbclient "\\\\$server\\$service" -U$user>> $logfile
----


I didn't add my password here, but it should prompt for it anyway. Now, I just try the smbprint-script first, but it won't work:

----
$ smbprint "test"
+ logfile=/tmp/smb-print.log
+ eval 'acct_file=$1'
++ acct_file=test
+ spool_dir=/var/spool/lpd/smb0
+ config_file=/var/spool/lpd/smb0/.config
+ eval cat /var/spool/lpd/smb0/.config
++ cat /var/spool/lpd/smb0/.config
server = LABMETSERVER
service = HPLaserJ
user = kurts
password = "xxxxx"
+ echo 'server , service '
+ echo translate
+ echo 'print -'
+ cat
+ /usr/bin/smbclient '\\\' -U
\\\: option requires an argument -- U

----

Apparently, the variables 'server', 'service', 'user' and 'password' are not read (since they are replaced by nothing). What am I doing wrong?



thanks in advance,
Kurt
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
