From: James Miller <jamtat@mailandnews.com>
Subject: stopping diald
Date: Sat, 8 Mar 2003 12:07:12 -0600 (CST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.53.0303081157280.18544@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Newbie question:

I've started experimenting with diald, since I'm planning on setting up a
small network from which more than one computer will be needing to access
the 'net. Diald works fine, in terms of connecting to the provider. My
question is about stopping the process. So far, I've been able to stop
diald only by opening a console and su'ing and issuing "poff." Trying to
run poff from a console as user results in the message "/usr/bin/poff:
/bin/kill failed. None stopped". I believe that this is because the
process is owned by root, as ps axu shows. I need a more elegant and less
restrictive process for stopping the diald connection than having to open
a console, su, then issue "poff." Can someone please suggest alternative
methods? Eventually, I plan on adding a poff item to my Icewm toolbar. But
understanding various ways to stop the process is prerequisite to that (I
know how to edit the toolbar config file, and have some understanding of
how the entries should look).

Thanks for any help.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
