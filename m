From: "Jamie Risk" <jamie_risk@yahoo.ca>
Subject: How can I move /usr/bin, /usr/lib (etc.) files?
Date: Thu, 2 Jan 2003 11:54:51 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <av1qr4$hev$1@main.gmane.org>
Reply-To: "Jamie Risk" <jamie_risk@yahoo.ca>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Moving the contents of my "/usr/bin" directory is simple enough: "mv
/usr/bin [newdirectory]" does the trick; but finding the programs in the new
location seems to be the kicker.

I'm using bash, so editting the ".profile" file in the user's home directory
seems to have done the trick for the most part, although when I invoked
"man" (as in "man bash") after moving the directory, updating ".profile" and
re-login,  I get messages akin to "/usr/bin/nroff not found" and
"/usr/bin/tr not found".
 * Where, in general, do programs (such as man) get there path information
from?

Similarily, I'd like to move the /usr/lib directory to another location.
 * Should I download src for packages that I'm using and recompile with
appropriate destinations chosen in the configure scripts?

Some information about my system is available at
"http://members.rogers.com/riskweb3/Linux/ibm_linux_box_info.html"

Let me know if you want to see more info ...

Thanks,
- Jamie

p.s. I've been using unix systems for years and have always relied on
services of others to administrate my environments. Recently I started using
a minimalist Linux installation to catalyze my unix admin learning process.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
