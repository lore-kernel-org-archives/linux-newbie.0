From: Chris Rose <offline@shaw.ca>
Subject: Re-installing issues
Date: Mon, 24 Jun 2002 03:08:54 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.1.6.0.20020624030130.033c7200@shawmail.ed.shawcable.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

i'm running Mandrake 8.1, and i think i have to re-install - it looks like 
RPMdrake is buggered up, and i can't upgrade rpm at all because of circular 
dependencies.  So, i want to re-install - I THINK.  i figure that i might 
as well upgrade to Mdk8.2 in the process, largely because i can't afford to 
go out and buy SuSE.  Here's where i run into a few snags.  What do i have 
to keep to keep my work environment *more-or-less* consistent?  The linux 
box is not a main workstation, since i'm generally more comfy with 
Win2k.  But it is the file server.  i have a /home partition that is 
formatted in ReiserFS, and a /var/ftp directory that is mounting /dev/hdb0, 
a single 20Gb ReiserFS partition.  Other than that, i think that the only 
thing i really care about is some game servers, but those are trivial to 
reinstall.

So, i have a phobia of re-setting up both Samba and Proftpd - they were 
easily enough of a pain the first time around.  And i'd rather not lose all 
my users.  IS there a simple list of what i should save?

...or...  is there an easy way to make Mandrake clean its mess up with rpm, 
so that i can go back and start over?

(A side question - my RPM database shows two versions of openssl installed 
(openssl-0.9.5a-8mdk and openssl-0.9.6b-1mdk).  Is there any way to erase 
ONE of these packages?)


Chris R.
========
Lumen Redundas
"To Cast The Light Of Knowledge On The Already Well-Known"


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
