From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: 2 questions: 1. ssh permissions to 777 and 2. recursively change
 all directories/files to 777
Date: Mon, 13 Dec 2004 13:54:24 -0800
Message-ID: <41BE0F90.9030905@bcgreen.com>
References: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: eatley@wowcorp.com

Eve Atley wrote:
> First question...
> We have people SSHing into our Linux box from overseas (India to US, company
> access only). But files that are uploaded from these people become read-only
> to anyone else accessing them. We *require* that they be readable/writable
> by this side of the pond (US). How can I set this to occur? Otherwise, this
> method of transferring files will *not* work for us, and perhaps someone can
> point me to another solution.
> 
> Second question...
> How can I recursively set all files/directories to 777?
> Chmod -R 777 *.* ... Didn't seem to hit everything.

The problem is that permissions are preserved when using scp.
(i.e. if the file is mode 700 on the source box, it will be
mode 700 on the destination, independant of umask settings).

Your *.* wildcard is a holdover from your DOS days.  Not all UNIX
files have a dot in them, but the dot will have to be explicitly
matched since it was explicitly requested.

Chown -R 777 * will catch everything other than files/directories
with a leading dot.

chmod -R 777 . will get EVERYTHING (including resetting the
permissions of the current directory).

You can also use the find command to find files that aren't
readable by others, and only change the permissions on them
(I'll leave that as an exercise for the reader).

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
