From: dashielljt <dashielljt@gmpexpress.net>
Subject: Re: Extract images from zipped .eve archives
Date: Fri, 29 Nov 2002 15:41:03 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0211291536390.1297-100000@athame.gmpexpress.net>
References: <5.1.0.14.1.20021129083149.02134d90@celine>
 <5.1.0.14.1.20021129083149.02134d90@celine> <5.1.0.14.1.20021129114801.0212fd90@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20021129114801.0212fd90@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

For the default behavior of a program to happen on a file, you feed the
program the file name only.  The unzip -v will allow you to view the zip
file's contents but will not extract files.  I wouldn't use the -d option
either since zip's default when extracting files is to
createsubdirectories.  What I would do is mkdir /tmp/unzip then mv zipfile
/tmp/unzip then cd /tmp/unzip then unzip *.zip.  Then check out directory
contents inside of /tmp/unzip and directories lower than that.  This way
you control where unzip puts your files and have no strange surprises
later.

Jude <dashielljt(at)gmpexpress-dot-net>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
