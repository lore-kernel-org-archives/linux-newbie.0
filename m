From: Andrew <ald2@arrakis.es>
Subject: uninstalling source package
Date: Wed, 01 Sep 2004 17:49:36 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1094053775.8237.15.camel@p2.ald.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux newbie <linux-newbie@vger.kernel.org>

Hi,
Silly me went and installed a source package on the wrong machine. The
package in question is Mail-SpamAssassin-2.64.tar.bz2 and the system is
Mdk-10. When I do 'make uninstall' I get:

Uninstall is unsafe and deprecated, the uninstallation was not
performed.
We will show what would have been done.
 
no packlist file found:  at /usr/lib/perl5/5.8.3/ExtUtils/Install.pm
line 332.
make: *** [uninstall_from_sitedirs] Error 2

So how do I uninstall it?

TIA,
Andrew

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
