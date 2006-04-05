From: Hal MacArgle <haltec@kvinet.com>
Subject: SuSE 10.0 and it's RPM 4.1.1??
Date: Wed, 5 Apr 2006 11:10:39 -0400
Message-ID: <20060405151039.GA1065@lnx2.kvinet.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


Greetings: A Slackware junkie all my Linux life, I'm just now
"playing" with other distributions that use RPM..

At first I thought, piece of cake, invoking rpm -i package.rpm;
slick..

That didn't last, when I tried installing a package that didn't play
ball, and opened Pandora's box of queries.. Man rpm shed some light,
what I understood, so I pulled a book I had covering Red Hat 6.2 -
rather old, but just maybe??

rpm -i package.rpm - returns "warning: package.rpm: V3 DSA signature:
NOKEY, key ID [octet of characters]
error: Failed dependencies: (with a list of no less than 15 of them
reporting the exact library needed...)

First off, I didn't know what V3 DSA meant, but the missing
dependencies are fairly normal these days.. I had some work ahead of
me but the RedHat book said to use rpm -q --redhatprovides
<library.so.X> and it would list the base package needed.. This is
not RedHat, of course, but there is a --provides flag that didn't
return anything except that the package was missing.. I tried that
entering a library that's either in /lib or /usr/lib, and it returned
"Package not installed." I'm presuming this has been changed for, at
least, libraries.. Or--is it the NOKEY thingy?? Stumped!!

BTW the subject package was fetched from rpm.pbone.net, whereas the
rpm's installed previous to that were ones in the SuSE distribution
package.. That has to have a lot to do with it, IMHO... <grin>

Is there a tutorial that explains this better than the man?? TIA.

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
