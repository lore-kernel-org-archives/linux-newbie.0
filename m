From: beolach@juno.com
Subject: Re: How to update JRE?
Date: Mon, 21 Jul 2003 19:50:38 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030721.132729.505.480316@webmail10.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: gnome@hawaii.rr.com
Cc: linux-newbie@vger.kernel.org


Before installing Sun's version of JRE, you might want to
look into the differences between Sun's and Blackdown's JRE.
As far as I understand it, if you use the latest version of
Sun's JRE (1.4.2), it is the best choice, but if you want to
use version 1.4.1 or older, you might need to use Blackdown
if you want to use the plugins in Mozilla, if Mozilla was
compiled with gcc ver. 3.x. A nice summary page is available
at <http://plugindoc.mozdev.org/whichjava.html>.

But remember, this only applies to JRE 1.4.1 or older, with
Sun's JRE 1.4.2 this is no longer an issue, and so Sun's JRE
1.4.2 will probably be your best choice, unless the program
you want to run specifically says it will only work with an
older version.

Just my 2 cents worth,
Conway S. Smith

--- "James Turnbull" <james@lovedthanlost.net> wrote:
> 
> David Jones wrote:
> > I have a *very recently updated* (like installed and
> > completely apt-getted and updated and such like 10
> > days ago) Debian. It came with a JRE identifying itself
> > as 1.4.1, build Blackdown-1.4.1-01. I've been informed
> > by the author of a certain Java program that I like (at the
> > moment, not the author, just the program!) to go the Sun
> > JRE link on his web site and download that version -
> > which, according to the target of the link on his web
> > page, is version 1.4.1 ... anyway, how does one update
> > a JRE on Linux? I've only done it on WIndows and OS/2
> > (both via an executable that you download and run).
> 
> At the Sun Site http://java.sun.com/j2se/1.4.1/download.html there is > a .bin
> file available to download.
> 
> Here are instructions for unpacking .bin files:
> 
> http://mandrakeforum.com/article.php?sid=2329
> 

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
