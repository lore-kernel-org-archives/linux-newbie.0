From: "Anna G. Zapata" <azapata@du.edu>
Subject: RE: upgrading open ssh
Date: Mon, 23 Feb 2004 15:03:36 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <HBEJLOFMLEPBMAAEFNFDMECJCFAA.azapata@du.edu>
References: <20040223213040.GB10315@sevoog.kriation.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <20040223213040.GB10315@sevoog.kriation.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Armen Kaleshian <akaleshian@kriation.com>
Cc: linux-newbie@vger.kernel.org

Armen,

How do I go about removing the rpm version?

Thanks for all your help.

Anna

-----Original Message-----
From: Armen Kaleshian [mailto:akaleshian@kriation.com]
Sent: Monday, February 23, 2004 2:31 PM
To: Anna G. Zapata
Cc: linux-newbie@vger.kernel.org
Subject: Re: upgrading open ssh


Anna..

Since you were using an rpm version of SSH before, and now you've converted to a
source package, it might be a little more difficult to stay consistant.

On my system, I removed the rpm version and replace it with the source version,
by compiling and installing it the way you did.

I suggest removing the rpm package of SSH that you have, and then simply just
run make install on the SSH source directory you have, and that way, you're
guaranteed to run the version you're expecting.

Good Luck!

--Armen


On Mon, Feb 23, 2004 at 02:12:15PM -0700, Anna G. Zapata wrote:
: Hi all,
:
: I downloaded and installed the latest version of open ssh.  I was running openssh-3.6.1p2-19 on a Fedora box.
However,
: how do I know that the new install took and that the old open ssh has been done away with?  I did the ./configure,
make,
: and make install, but I think I'm missing some steps.
:
: Thank you as always.
:
: Anna Zapata
: UTS - Network Security
: 303.871.2009
:
:
: -
: To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
: the body of a message to majordomo@vger.kernel.org
: More majordomo info at  http://vger.kernel.org/majordomo-info.html
: Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
