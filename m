From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: running X programs as another user
Date: Thu, 25 Mar 2004 09:45:25 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0403250943280.26064-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Sorry for the duplicate postings (if it does get duplicated) -- my first 
message was not posted even after ~10 hrs. 

----------

Along the process of trying to recompile a personalized kernel for this 
machine (following my previous posts and responses), I seem to be unable 
to run any X-based programs as root from within an X-session started as a 
regular user (karthik). I.e. I log in as karthik -> startx, open an xterm, 
and su - root. Once there, any attempt to run an X based program gives an 
error, for e.g.:

# gandalf:~# whoami; gw
root

Gdk-WARNING **: locale not supported by C library

Gtk-WARNING **: cannot open display: 


I am guessing this is some sort of security measure? 

How can I circumvent this? What are good places to gain some basic
understanding of X and related security concerns etc.

Thanks,

-K


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
