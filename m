From: Ray Olszewski <ray@comarre.com>
Subject: Re: disabling graphical login
Date: Sat, 02 Aug 2003 19:59:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030802194747.020136d0@celine>
References: <5e7ce5b719.5b7195e7ce@homemail.nyu.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5e7ce5b719.5b7195e7ce@homemail.nyu.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:34 PM 8/2/2003 -0400, Anshuman Singh Rawat wrote:
>Ray,
>Thanks for the help so far.
>I am using RHL7.3 . I dont know if I am using xdm or gdm.
>The other info I can provide is that I use lilo for boot and KDE for X.
[old stuff deleted]

This added information is unhelpful (though the Red Hat part may get you a 
more helpful response from a RH user). You have to check the things I 
mentioned, not tell me that you don't already know which it is.

1. Look in /etc/inittab and see
         A. What the specified default runlevel is (check my prior message, 
which showed you what to look for).
         B. Whether that runlevel starts either xdm or gdm from inittab. If 
it does, you will see a line in inittab that mentions either xdm or gdm 
(Debian doesn't fo it that way, so I don't have an example handy, and I 
don't trust my memory enough to construct an accurate one from it).

If this is how your system starts xdm or gdm, change the default runlevel 
to one (probably 2 or 3) that does not start xdm or gdm.

2. Look in /etc/init.d (or the equivalent Red Hat directory) for a file 
whose name begins with either xdm or gdm. If you find one, see if 
/etc/rc?.d/ (replace ? with the default runlevel) contains a symlink to it.

If this is how your system starts xdm or gdm, remove the symlink and reboot 
(or just kill the xdm or gdm process).

As to which your system runs, "ps ax" from a console (when you are not 
logged into X) will tell you which it is. Just look through the list for 
"gdm" or "xdm".



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
