From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Compiling sg.o only (2.4.20)
Date: Wed, 17 Sep 2003 15:01:22 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030917190122.GA463@lnx2.w8mch.ampr.org>
References: <20030915173911.GA1802@lnx2.w8mch.ampr.org> <200309152113.48288.pa3gcu@zeelandnet.nl>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200309152113.48288.pa3gcu@zeelandnet.nl>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On 09-15, pa3gcu wrote:
> On Monday 15 September 2003 19:39, Hal MacArgle wrote:
> > Greetings: Changing to Slackware 9.0, 2.4.20, I discovered the
> > default kernel, bare.i, does not have the module; sg.o, but sg.c and
> > sg.h are in the src.. Therefore my HP scanner that worked with 2.4.18
> > is found OK but has no kernel support.. (At least I think that's the
> > problem so far.) (The scanner is a scsi job and I have the BusLogic
> > module, sane-backend, etc, installed.) (With 2.4.18, 'insmod sg', set
> > up the kernel support for this scanner.)
> 

> sg is in the kernel bare.i that is.
> 

Greetings Richard and my face is red.. I had 'presumed' Slack bare.i,
used the sg.o module.. It is, as you say, compiled in the kernel so
my problem was not as first expected...

I've just tried a build of sane-backend-1.0.6, then 1.0.11 then the
newest 1.0.12 and they are all the same with Slack9.0, 2.4.20.. sane-
find-scanner; cdrecord -scanbus; cat /proc/scsi/scsi all find the
scanner as sga; sg0 or scanner (with the symlink.)

Invoking scanimage -L, returns "No scanners were identified," the
proper report should be, in this case, "hp:/dev/sg0", if it was
working correctly... I'm stumped.. I've read the FAQ's and RTFM's and
Man's that all say the same thing - if sane-find-scanner, etc finds
it there can only be one problem: The scanner is not supported by
SANE, but all the above list it by model number and firmware version
plus it does work beautifully with Slack8.0 and 2.4.18, as well as
several kernels before '18'... Make version and gcc version OK...
I've even tried running with 'ide-scsi' either running or not. One
FAQ mentioned that as a possibility..

There is supposed to be a bin version for Slackware8.1, but I
couldn't find it with my browser..

I've just found an entry in '/boot/config' that may mean something:
CONFIG_KMOD=y in 2.4.20 and not set in 2.4.18/Slack8.0... I don't 
know what KMOD is, but I note that dmesg booting 2.4.20 reports it
"can't exec modprobe -s -k scsi_hostadapter err no 2".. It repeats this
three times.. Can it be a re-compile with this unset might do the job?

I've archived your attached comments for the future.. <grin>

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
                Proprietary  Formats  Unacceptable
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
