From: Ray Olszewski <ray@comarre.com>
Subject: Re: distribution choice
Date: Fri, 28 Feb 2003 07:38:00 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030228071326.01f5d788@celine>
References: <20030228012551.81191.qmail@web11406.mail.yahoo.com>
 <20030228012551.81191.qmail@web11406.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302280830.44084.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I'll venture to disagree with one detail of Frank's review.

At 08:30 AM 2/28/2003 -0500, Frank Roberts wrote:
[...]
>It is recommended that one acquire the commercial box sets for the commercial
>distributions or a commercial generated CD set for Debian. For Debian try a
>company like Cheap Bites.

While I cannot comment on the relative merits of the commercial box sets of 
Red Hat, Mandrake, and SuSE, I have a lot of experience with Debian 
installs, and I'm no fan of using its CD sets in normal installation 
settings (where "normal" merans that a reasonably fast and reliable 
Internet connection is available). One of Debian's relative strengths among 
distros is its on-line installer system, which assures that the latest 
versions of packages in a distro are loaded, not the ones that happened to 
be included when CheapBytes (not "Cheap Bites") burned its master CDs or DVD.

For Woody (Debian Stable, the one also called Debian 3.0, currently at 
3.0r1, December 2002), this mostly means getting the security updates; the 
price of using a Debian Stable distro is that you do not get frequent 
updates to packages for non-security reasons.

For Sid (Debian Unstable), package updates are frequent (there are new 
versions almost every day), and as far as I know, there is no CD option 
anyway (though I admit I haven't looked for Debian CDs for a long time, I 
just checked CheapBytes, and they only list 3.0 and the obsolete 2.2/Potato).

After a bit of practice, the "apt" tools used for on-line installs and 
updates ... at least in my expeirnce ... become fairly easy to use, whereas 
the "dselect" system used for managing CD files has been overwhelmed by the 
increase in size of Debian and is very cumbersome to wotk with. This is 
especially true now that Woody has gotten big enough that it ships on 8 CDs 
(from CheapBytes, for example) or a DVD (for those of use with DVD drives 
on our target systems) with CD supplements.

Regarding laptop installs -- I haven't done one in years, but my memory is 
that they are a nightmare for *any* distro, not just Debian. Laptops give 
"non-standard component" a whole new meaning. What distro do you *like* for 
user-level laptop installs (as contrasted to buying a laptop with Linux 
pre-installed)?

Oh, and one stylistic comment: despite his use of phrasings like "It is/is 
not recommended", everyone should read Frank's comments as his personal 
opinions, not a summary of a general consensus. I doubt any general 
consensus exists on these matters.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
