From: James Miller <jamtat@mailsnare.net>
Subject: Debian-broken package not really broken
Date: Mon, 20 Dec 2004 11:58:56 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0412201138120.8949@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

This inquiry refers to a Debianish variant called Ubuntu and a certain
Debian package I've found and installed on it. The package wasn't in
Ubuntu's repository, so I located a .deb and downloaded and installed it
using dpkg -i. I figured after this I could simply try starting it from
the command line and install missing dependencies I would see in the
output.  One missing dependency--libpng--was in the Ubuntu repository, so
I got that. The other--libtiff3g--was not, and was nowhere to be found.
Searching my system, I noticed a libtiff4 and some documentation. Reading
the documentation I came to understand that the version numbering had been
modified owing to some fault in the code during a certain sequence of the
3.x series (sorry for such a wierd description, but I really don't
understand the particulars very well). My close-enough-for-horseshoes
technical sensibilities told me that libtiff4 would suffice for this
program, so I proceeded to symlink to libtiff4 the library names the
program was searching for.  Then, the program worked.  This turned out to
be some fairly productive flailing, in a sense. But, as usual, there is
some problem. The problem is with apt-get (Synaptic front end is what I
use mostly these days, having sissed out in many respects): Synaptic tells
me there are broken packages and it wants to fix them. The broken package
is, of course, the one I've made the symlinks to libtiff4 for. "Fixing"
means removing in this case. I suppose it sees it as broken since,
technically speaking, it has a missing dependency (libtiff3g). In reality,
it works just fine with the libtiff4 symlink though.  What I'd like to do
to "resolve" this is to lie to the system about this program, i.e., to
either make it think the missing dependency is satisfied or the program
isn't really installed. Short of doing this, I can't use Synaptic since it
won't do anything til I "fix" (i.e., remove) the "problem" package. Can
anyone suggest some solution to this situation?

Thanks, James

PS The "problem" package is Links2.

PPS Boy, if it were Windows interfering with me administering my own
system, I'd be *really* mad :)
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
