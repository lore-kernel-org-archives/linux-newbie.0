From: Ray Olszewski <ray@comarre.com>
Subject: Re: upgrading open ssh
Date: Mon, 23 Feb 2004 13:44:51 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040223133553.02004c38@celine>
References: <HBEJLOFMLEPBMAAEFNFDMECICFAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDMECICFAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:12 PM 2/23/2004 -0700, Anna G. Zapata wrote:
>Hi all,
>
>I downloaded and installed the latest version of open ssh.  I was running 
>openssh-3.6.1p2-19 on a Fedora box.  However,
>how do I know that the new install took and that the old open ssh has been 
>done away with?  I did the ./configure, make,
>and make install, but I think I'm missing some steps.

You may be missing something, but those are the usual steps for installing 
apps from source (assuming they all completed with no errors reported ... 
and not all source uses the autoconfigure approach).

I don't know if there is something specific to Fedora that helps with this, 
but if not, the usual suspects to round up are:

1. Timestamps on the app files. After you do a "which ssh" to find the one 
that will actually run , do "ls -l " on it and see if the timestamp matches 
the compile (or install) time.  With some apps, you'll need to chase down a 
line of symlinks to get the actual executable, but I don't think that's so 
with ssh.

2. Version number. The command for this can vary from app to app, but ssh 
uses the most common choice, "ssh -V".




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
