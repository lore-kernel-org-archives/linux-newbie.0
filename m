From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: Locate Vs Find
Date: Wed, 01 Dec 2004 21:07:51 -0800
Message-ID: <41AEA327.6010007@bcgreen.com>
References: <20041122165244.62360.qmail@web52904.mail.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20041122165244.62360.qmail@web52904.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ankit Jain <ankitjain1580@yahoo.com>
Cc: newbie <linux-newbie@vger.kernel.org>

Locate only finds files by looking up the name in a database.
Once a day it regenerates the database.

If you're just looking for a filename, and you don't mind it being
anywhere up to 24 hours old (sometimes more, but rarely), then
ocate is a FAR faster way to do things.


Find, on the other hand can do WAY more tests than just
the filename, and it can do way more things with a file it
finds than just print it.   The find command syntax is
actually a primative programming language. and you can
take actions based on the file type file syatem type
mtime, ctime atime  file size, owner etc. etc.

Most, recent, versions of find can even tar up certain
matched files.

'Man find` for nore info on what find is capable of.


Ankit Jain wrote:
> Which is more efficient? /if both perform the same
> work and are not different then why shoudl we have 2 ?

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
