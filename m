From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: sharing X displays
Date: Thu, 11 Dec 2003 23:29:53 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0312112321490.29121-100000@legolas.personal.engin.umich.edu>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hello,

On trying to run xcdroast (or any program that requires X display) after
su'ing in as root, I get the following error:

-------
[root @gandalf karthik]$ xcdroast 
Xlib: connection to ":0.0" refused by server
Xlib: Invalid MIT-MAGIC-COOKIE-1 key

Gtk-WARNING **: cannot open display: :0.0
-------

On executing xhost +127.0.0.1, and trying the same, I am able to run 
the application without any problems. 

Why does this happen? Is'nt localhost allowed to connect to the Xserver by
default (am I being protected from something bad here?) ? What can I do to
resolve this so that I don't need to xhost prior to executing an
X-application?

Thanks,

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
