From: Alan Womack <arwbackup@worldnet.att.net>
Subject: re[2]: authentication issues
Date: Sat, 8 Jun 2002 16:30:31 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020608233110.QCMG19182.mtiwmhc21.worldnet.att.net@alan>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: Text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Perhaps not meaningful but informative, I've cruise about the web, but finding do this and see this, do this and see this is missing for someone like myself who's unix,vms,linux experience is either so old as to not be specific enough or non existant.  The method to check each layer would be informative as well as assist in my general knowledge of linux.

 >>  At this level of abstraction, there is no meaningful answer to the 
 >>  question. Unless you think "check each of them, one by one" is meaningful 
 >>  advice (I don't).

This may have shed some light on possible further up the ladder problems.  The file exists, and the two users I added with the ldap tools.  smbldap-useradd.pl do not have entries in the file.

 >>  >eg.  how do I tell if I use/need shadow passwords?
 >>  To tell if your system *uses* shadow passwords, see if it has a file
 >>  called  /etc/shadow .

Yes my users I added by normal redhat adduser are there with the x, but the smbldap-useradd users are not their either.

 >> Also check that the password field in each entry of 
 >>  /etc/password contains only a single "x" character.

 >>  Whether you "need" shadow passwords? They are pretty much the standard now
 >>  
 >>  for any Linux system that is connected to the Internet.

I have no MD5 flag file in the pam.conf which was in /etc/log.d/conf/services

only a couple of actual entries in that file, rest are comments, no md5 settings.

 >>  >How do I tell if I have md5 and what encryption method it is using?

 >>  Depends on the details of your setup. You might look for the MD5 flag in 
 >>  any of these locations: /etc/pam.conf, /etc/pam.d/passwd, or (just barely 
 >>  possible) /etc/login.defs .


 >>  >I ask because when I enable my authconfig to use ldap, I can no longer
 >>  log 
 >>  >in, but there are several changes that occur to enable ldap and I am not 
 >>  >sure ldap is the actual non functional portion of the whole mess.

I'm sure I don't have the log level set correctly to get much useful information at this time, I tried a log level of -1 in the slapd.conf file, will try some other entries from there.

 >>  I don't use ldap here. Do the logs tell you anything you (or we) might 
 >>  consider informative?




Epson Inkjet Printer FAQ: http://welcome.to/epson-inkjet
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
