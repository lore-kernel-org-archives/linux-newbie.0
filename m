From: Ray Olszewski <ray@comarre.com>
Subject: Re: Id "x" respawning too fast: disabled for 5 minutes
Date: Tue, 17 Feb 2004 16:15:56 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040217160914.020297d8@celine>
References: <HBEJLOFMLEPBMAAEFNFDCEAPCFAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDCEAPCFAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 04:17 PM 2/17/2004 -0700, Anna G. Zapata wrote:
>Hello all,
>
>I just updated the fedora core with all it's new patches and now the 
>machine seems to be hosed.  On reboot, I get the
>following message:
>
>"Id "x" respawning too fast: disabled for 5 minutes" - Any ideas?  I have 
>had nothing but problems with Fedora.

I can tell you what is happening, but not why it is happening. The above 
message refers to this line in /etc/inittab --

         x:3:respawn:/etc/X11/prefdm -nodaemon

The app "prefdm" starts, then exits almost immediately. So the respawn part 
of the entry tells init to start it again. It starts, exits ... and so on. 
To keep continued respawns from typing up the system, init notices, stops 
the cycle, and logs it.

That's the "what". The "why" is probably some sort of problem with prefdm, 
whatever that is (some sort of X login app, similar to xdm or gdm, maybe?). 
Make sure it is actually present on the system, and that you can run it 
successfully from the command line. If it fails, notice why and fix it 
(since you just did an update, I'd wonder about a shared-library 
incompatibility, for example).

I confess I don't know why this particular failure would leave the machine 
"hosed" ... but then, "hosed" is not a problem description, really. I'd 
expect 6 terminals to be available on vt1 through vt6, for example, ready 
for logins. If you write again, please describe the actual problem you are 
experiencing, not just the message that si logged about a specific errant 
process.


>I have no clue what is going on here.  I tried to get the machine in run 
>level 3, but I still can't get it to work.
>Here is a copy of the /etc/inittab file:
[deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
