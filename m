From: Ray Olszewski <ray@comarre.com>
Subject: Re: messages in /var/log/
Date: Tue, 03 Aug 2004 22:41:33 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040803223500.01f0d8e0@celine>
References: <Pine.LNX.4.44.0408032211350.1084-100000@legolas.personal.e
 ngin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0408032211350.1084-100000@legolas.personal.e
 ngin.umich.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 10:15 PM 8/3/2004 -0400, Karthik Vishwanath wrote:
>I have a whole load of entries that look like:
>
>Aug  3 14:48:38 gandalf -- MARK --
>Aug  3 15:08:38 gandalf -- MARK --
>...
>
>
>These are repeated every 20 minutes. How can I determine where are they
>coming from and what they mean?

Second things first ... what they mean is that the system was operational 
at the times associated with the timestamps. If you try to log on to your 
system and find it dead as a doornail, needing a hard reboot, the last MARK 
you find in the logs after a reboot will tell you the approximate time of 
the failure.

As to where they are coming from ... on my Debian systems, it's a built-in 
feature of syslogd. Check your man page for the -m option to see if yours 
matches mine (I haven't seen a question from you in awhile, and I forget 
what distro you are running). You can change the frequency with -m, and 20 
minutes is the default.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
