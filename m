From: Chris Rose <offline@shaw.ca>
Subject: RH8 rpm database is toast
Date: Sat, 11 Jan 2003 21:22:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000401c2b9f2$32626a90$4b01a8c0@deadbox>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Linux-Newbie (Linux Newbie)" <linux-newbie@vger.kernel.org>

I attempted to uninstall one of two overlapping versions of the cyrus-sasl
package this evening, since apt-rpm complained that it couldn't work with
two of the same package installed.  Rpm hung during the install (rpm -e
cyrus-sasl-2.7.??) so hard that I had to log out of the terminal that it was
running on (SecureCRT from a win2k box) in order to get free of it.

Since then, I can't do anything at all with the rpm database.  I can't query
it, I can't even --rebuilddb it.  Is there any way that anyone here knows of
to fix this horrid situation?

Any info needed, I can provide - I realize that what I have here is pretty
sparse, but there really wasn't a lot of info fed back to me by the system.

--
Chris R.
=====
http://offline.pointclark.net/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
