From: "Yoni Kallay" <Yoni@kallay.net>
Subject: ssh or samba causing network problems?
Date: Wed, 12 Mar 2003 10:41:44 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200303121041.AA650576096@kallay.net>
Reply-To: <Yoni@kallay.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi all,
  I was just asked by the "system administrator" at the school where I work to take down my Linux box and I'm looking for vindication:

  I put the words "system administrator" in quotes because the man unfortunately isn't even given the authority to create NT trust accounts for our NT domain- anything that involves real sysadmin is run centrally (and, of course, incompetently) by the school district.  We've been having all sorts of network problems at our location, and after months of troubleshooting someone noticed a non-Windows, non-school-supplied machine running on the network, which allegedly violates some rules (it would be pointless to bring up that there is no money for me to be given a computer, so if I want one at school I have to bring it in myself).  What I wonder, though, is if there is some possibility that the computer is responsible for the network problems, which was just described to me as 'something creating so much network traffic as to bring the network down.'  First, the machine had been running Samba.  The smbd settings relating to the machine acting as a Primary Domain Controller were
  all set to either Auto or No.  I did notice, though, that one time that the network went down the nmbd process was using up a lot of processor time.  Is it possible that the machine was forcing domain controller elections and thus overloading the network?  Second, I've been using ssh to log in to my machine at home, (using an X client only on extremely rare occasions).  As I understand it, ssh does not generate a huge amount of data, it simply requires processing power on either end and should not affect the network.  Third, if there were a situation where password security on my machine were compromised, could it be a more dangerous tool for mischief than the Windows machines?  It hasn't been running any telnet or ssh daemons, although it has been running the exim MTA.  Obviously, on a well-run network this would not be an issue, but this is sort of situation where anything that is unfamiliar is automatically suspected. 
             
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
