From: Ray Olszewski <ray@comarre.com>
Subject: Re: cleaning up disk space
Date: Mon, 09 Jun 2003 08:29:07 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030609082419.01e9c8d8@celine>
References: <AKEILINJHJBKDJLADJENCEIHDHAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <AKEILINJHJBKDJLADJENCEIHDHAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 08:50 AM 6/9/2003 -0600, Anna Grace Zapata wrote:
>Hello all,
>
>I tried patching my Linux box with the latest RPMs.  However, the machine
>said that there was not enough room.  How should I proceed?  How do I go
>about knowing how much disk space is available and how to clean up the
>machine to make more room.

The command to check filesystem utilization is "df". It reports the size of 
each filesystem, the space used, and the space available (after subtracting 
the reserve, usually 5%, for root).

There is no *general* answer to your second question ("how to clean up the 
machine to make more room"). If your system is too full for an update, you 
need to remove something ... but the best choice of "something" depends on 
what you already have installed and what you actually use the system for. 
You know that information; we don't.

The details of how to proceed may also depend a bit on what distro and 
version you are using. SInce you mention RPMs, I can rule out Slackware and 
Debian, but most of the other big-name distros use RPM packaging.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
