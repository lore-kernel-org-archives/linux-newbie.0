From: Hal MacArgle <haltec@iceweb.net>
Subject: Re: Need fdformat from Slackware 3.5
Date: Wed, 4 Dec 2002 09:42:53 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20021204094253.A397@lnx2.w8mch.ampr.org>
References: <200212040027.RAA04650@cu.imt.net> <5.1.0.14.1.20021203181554.020faec0@celine>
Reply-To: haltec@iceweb.net
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <5.1.0.14.1.20021203181554.020faec0@celine>; from ray@comarre.com on Tue, Dec 03, 2002 at 06:22:11PM -0800
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Greetings: This thread very interesting to me so would like to add
something FWIW:

For very quick re-formatting floppies I've been using mformat a:,
thence mdir a:, thence dosfsck -tvr /dev/fd0 - for a scan test..
I tried superformat /dev/fd0 hd - on some of those disks and got a
failure notice.. So can presume that superformat is more thorough
than mformat, at least to me..
Trying superformat then dosfsck -tvr confirms that superformat does,
in fact, put a dos fs on the disk.. Interesting.... We learn
something new every day, eh?  Just a thought..

    Hal - in Terra Alta, WV - Slackware GNU/Linux 8.0   (2.4.13)
	       haltec@iceweb.net | w8mch@iceweb.net
                Proprietary  Formats  Unacceptable
		    NON ILLEGITIMI CARBORUNDUM

On 12-03, Ray Olszewski wrote:
> At , Jerry James Haumberger wrote:
> >Hi, folks --
> >
> >After installing BasicLinux, I discovered that I needed to add
> >fdformat to format ext2 on high density 3.5" and 5.25" floppy disks.
> >
> >Unfortunately, I'm not quite sure where to look for this on the
> >Slackware 3.5 site (which is what I need for BasicLinux 1.7).
> >
> >I would greatly appreciate anyone pointing me to the ftp address where
> >I can download the tar file for fdformat and use pkg to install it.
> 
> Go to any Slackware 3.5 mirror site (find one via Google if you need to) 
> and look at the Manifest.gz file in the Slakware [sic] directory. You'll 
> find all the packages listed with their contents. In your case, you 
> probably want one of these:
> 
>          fdformat, contained in ./a11/util.tgz
>          superformat, contained in ./a1/aaa_base.tgz
> 
> In modern distros, I believe that superformat has superseded fdformat for 
> formatting both regular and high-density floppies.
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
