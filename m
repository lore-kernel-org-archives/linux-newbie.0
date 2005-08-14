From: "P.Manohar" <pmanohar@lantana.cs.iitm.ernet.in>
Subject: starting a user defined daemon at linux startup.
Date: Sun, 14 Aug 2005 11:42:27 +0530 (IST)
Message-ID: <Pine.LNX.4.60.0508141137540.20130@lantana.cs.iitm.ernet.in>
References: <Pine.LNX.4.44.0508120118150.20982-100000@treebeard.engin.umich.edu>
 <200508130940.51347.pa3gcu@zeelandnet.nl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200508130940.51347.pa3gcu@zeelandnet.nl>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Hai
   I have written a daemon, and it is working when I load it.
   Now I want to start that daemon at startup in linux, so that without 
manually running , it has to start along with all the daemons available 
in the system. I came to know that we need to put a script into 
/etc/rc.d/init.d/
similar to sshd or atd. Do we need to write a script to run my daemon?

I have the daemon's binary, what should be the script content to run it .

But my daemon is just a single executable, is there any othr way to do 
this.

Thanks In Advance.
P.manohar.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
