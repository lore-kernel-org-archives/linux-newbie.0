From: Peter Edstrom <peter.p3@home.se>
Subject: Re: Filtering Email to Delete Without Using POP Filters
Date: Sat, 9 Aug 2003 23:40:55 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030809214055.GA7283@linux>
References: <200308091403.18490.sotl155360@earthlink.net> <Pine.LNX.4.53.0308091520360.32702@localhost>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.53.0308091520360.32702@localhost>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>

Using procmail is a very good way of handling mail filtering, in my
opinion. You can easily combine it with a spam filter (ie. bmf; take a
look at http://sourceforge.net/projects/bmf/ for more info) to limit the
amount of spam you receive. I think setting up new filters is not that a 
big deal, if you consider the great usage and portability of procmail
(you're not limited to any specific MUA).

If you find it frustrating manually adding mail filters, why don't you
write a li'l bash script? :)

Well, just my .2 SEK worth.

On Sat, Aug 09, 2003 at 03:24:36PM -0400, jude dashiell wrote:
> Any number of ways exist to do what you want in Linux.  If you use pine,
> under setup and rules you'll find filters and you want to add a filter.
> Then name the filter and fill in your criteria.  Save it and exit and the
> e-mail is gone.  There's procmail but it like sendmail is a major bitch in
> terms of getting operational and you have to keep on adding filters to it.
> I may go back to procmail though having used pine because procmail can
> forward spam to different mailing addresses very easily once you get it
> set up correctly.  mailfilter is another package that can do much the same
> thing as well.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
