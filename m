From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: cron job for rsync
Date: Fri, 30 Jul 2004 02:48:12 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0407300240000.20622-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

I was considering adding an entry in crontab for automated synchronization 
of files across two machines that I work on most frequently. One machine 
is at work, while the other at home. I used ssh-keygen so that I am 
able to be auto-authenicated to the machine at work from home. I want to 
run a cron job that runs at home to update the a list of files (from 
home->work if the most recent file is the one at home, or vice-versa.) 

I was particularly concerned about whether rysnc/rcp would be able use the 
authorized-key values from my $HOME (which is non-root) to be able to 
login to the remote machine. Do cron jobs run as root or can they be run 
for particular users as well? 

All ideas/inputs are appreciated. 

Thanks,

-K

---------------------
Biology is the only science in which multiplication means the same thing 
as division.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
