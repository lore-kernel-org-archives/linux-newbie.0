From: James Miller <jamtat@mailsnare.net>
Subject: right form for sources.list entries
Date: Tue, 7 Dec 2004 20:26:31 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0412072014040.16041@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I've been trying to add a certain entry to my sources.list file (this is
Ubuntu--a newer Debian variant) but cannot puzzle out the right form for
it.  I've looked at the Apt how to at Debian's site, as well as the
sources.list manpage: I didn't read them from beginning to end, but
looking in the places that seemed most relevant didn't turn up the answer.
This is not a standard Debian source, but a related project.  Part of the
problem here is that the documentation wants to show you how standard,
Debian entries look and to explain the components.  But since I'm not
using a standard Debian source, I suppose I'll need to transpose them
somehow to my situation.  But I can't find the right information to allow
me to do the transposing.  Maybe someone here can help?  The source I'm
trying to add is:

deb http://wine.sourceforge.net/Ubuntu/apt/ binary/

This is the way the url was listed in a posting I found.  I checked the
url and it is active, and sure enough, in the binary directory, there is a
Packages.gz file as I understand there should be.  When I add that line to
sources.list and then start Synaptic (sissified gui thingy for apt) I get
an error message about "couldn't stat source package."  What am I doing
wrong, and how do I add this entry successfully to sources.list?

Thanks, James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
