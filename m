From: Ray Olszewski <ray@comarre.com>
Subject: Re: checking for dependancies?
Date: Tue, 04 Mar 2003 09:17:36 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030304090431.01e75fd8@celine>
References: <534FB294.79976AEE.0006BEFC@netscape.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <534FB294.79976AEE.0006BEFC@netscape.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: neil t <wa4chq@netscape.net>, linux-newbie@vger.kernel.org

At 06:20 AM 3/4/2003 -0500, neil t wrote:
>Greetings all-
>Is there a way to learn or a command that you issue to
>determine if you have all the needed "stuff" for a
>program to work?  I sometimes go to the Debian Package
>site and I will see something I would like to try.  Some
>will say that in order for the program to work, you will need
>this, this and this.  In the past I would just try and see if
>it would work.  If it did, great! but if it didn't I would then
>find out what was lacking from the errors message.  I know there
>has to be a proper way to go about this.
>Thanks and all the best--


There are ways to do at least parts of this. But aside from using the 
dependency checking in your distro's package-management system, there is no 
*good* way I know of to assess this ... partly because "needed" is not 
well-defined.

To check if you have the needed shared libraries to run a program -- this 
is the one clear-cut meaning of "needed" -- you can run "ldd" on the 
program. It will spot anything that is missing. But there are other 
meanings of "needed" -- for example, MythTV needs access to working MySQL 
server, but since it can be on a different host, it is not a true 
dependency -- that are more elusive and that can really be assessed only by 
reading the application's documentation.

Since you use Debian, I would suggest that you change your approach from 
"just try" to using the apt-* installation system. It checks the dependency 
information in the .deb packaging system and will automatically add to any 
install the required dependencies. Other distros --- at least the RPM ones 
(how *does* Slackware handle dependencies these days?) -- have similar 
capabilities, but I'll leave it to someone who actually uses those distros 
to describe them.

This approach is only as good as the dependency information offered by the 
package database. This is usually pretty good but not perfect. Staying 
with  Debian as an example, some video applications require access to 
libraries or other stuff (e.g., codecs) that Debian cannot or will not 
itself distribute due to license or patent restrictions, but that you can 
get from non-Debian sources. These applications will install and even run, 
but they will fail in some uses until you add in the supplementary stuff by 
hand. (In all the examples I can think of, the info you need for this is in 
the package docs.)



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
