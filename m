From: "John T. Williams" <jtwilliams@vt.edu>
Subject: BLOODY CVS
Date: Fri, 25 Jul 2003 01:03:27 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <005701c35283$4fb289c0$ed64a8c0@descartes>
References: <5.1.0.14.1.20030724200741.01ee7cc0@celine> <Pine.LNX.4.56.0307242218050.6210@homenet>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Anyone who has CVS admin experience,
    I'm trying to figure out how to cause files that are added to a CVS rep
to belong to a particular group.  by this I mean, when a user says"

cvs -d:ext:user@mycvs.server:/cvsroot/myproject add newname

user is a member of group myproject (though its not his/her primary group)

I want new file to be added as newfile,v belonging to user.myproject

instead the new files is added as newfile,v belonging to user.(user's
primary group)

which means that I need to manually change the group before other users in
the group can either download file or upload changes to the file.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
