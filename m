From: Ray Olszewski <ray@comarre.com>
Subject: Re: no working Mozilla after Sid dist-upgrade: suggestions?
  RESOLVED
Date: Thu, 29 Jul 2004 17:14:14 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040729171151.01fd0df8@celine>
References: <Pine.LNX.4.58.0407261326010.1363@debian-emach>
 <5.1.0.14.1.20040716075506.01f20c68@celine>
 <5.1.0.14.1.20040716075506.01f20c68@celine>
 <5.1.0.14.1.20040716092314.01f08c58@celine>
 <Pine.LNX.4.58.0407261112300.1363@debian-emach>
 <Pine.LNX.4.58.0407261326010.1363@debian-emach> <Pine.LNX.4.58.0407291842350.1363@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0407291842350.1363@debian-emach>
References: <Pine.LNX.4.58.0407261326010.1363@debian-emach>
 <5.1.0.14.1.20040716075506.01f20c68@celine>
 <5.1.0.14.1.20040716075506.01f20c68@celine>
 <5.1.0.14.1.20040716092314.01f08c58@celine>
 <Pine.LNX.4.58.0407261112300.1363@debian-emach>
 <Pine.LNX.4.58.0407261326010.1363@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 06:50 PM 7/29/2004 -0500, James Miller wrote:
>I think I've finally straightened out this problem.  I posted to the
>Debian users' list about it, and someone (privately) indicated to me that
>they'd had such a problem, and that it was traceable to a font permissions
>problem.  He had discovered this by using strace.  I didn't even know
>about strace, so I read up about it and also used it to start Mozilla.
>Sure enough, the browser segfaulted right at a font permissions error.  I
>chmod'ed that font (600 to 644), and afterward accessed the page in
>question with Mozilla with no segfault/crash.  I think I know why the
>problem exists: I'm still a bit hazy on permissions for various
>files/dirs, and copied over a bunch of truetype fonts from Windows to
>Linux.  I probably screwed up permissions in so doing.
>
>So, my (hopefully) final question in all this is: what permissions are
>fonts supposed to have?  These are in /usr/share/fonts/truetype.  I'd like
>to just change them all en masse (in case some of them are wrong) to the
>right permissions.  Any tips on doing this?


Based on a quick look at my working fonts directory, it appears that the 
fonts themselves should be mode 644, and font directories within 
/usr/share/fonts/truetype/ should be mode 755. This is what I would expect 
them to be absent any specific information.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
