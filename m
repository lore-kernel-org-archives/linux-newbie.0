From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: tar for "full" floppy backup?
Date: Sun, 8 Dec 2002 16:07:02 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0212081603350.2573-100000@athame.gmpexpress.net>
References: <200212081837.LAA15273@cu.imt.net> <3DF44FE9.69FB5E4D@ihug.co.nz>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3DF44FE9.69FB5E4D@ihug.co.nz>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ichi@ihug.co.nz
Cc: Jerry James Haumberger <jerryjh@imt.net>, linux-newbie@vger.kernel.org

I wouldn't try that in that way, but the basic idea might work.  I say
might because I've never tried this and have never heard of any success
with this idea either.  One might do something like: tar czf * | tar cmvf
- /dev/fdd0/backup.tar.gz.  This pipes the compressed result into a
multivolume media result if it works.

Jude <dashielljt(at)gmpexpress-dot-net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
