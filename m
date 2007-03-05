From: Linda Walsh <lkml@tlinx.org>
Subject: way to "duplicate" console contents to a file?
Date: Sun, 04 Mar 2007 16:02:17 -0800
Message-ID: <45EB5E09.2040609@tlinx.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org


Is there a way to have my console messages duplicated and saved in a file?

I know about sending messages to "console" in [n]syslogd, but I'm
looking for the ability to essentially see a _copy_ of what is on the
screen.  There are messages that pop out on the console that I'd like to
view remotely, *and*, I would like to be able to review the startup
messages after the kernel has booted and while it is going through the
RC scripts.  Occasionally (often) I have some rc script that caused some
unexpected or weird output on boot that only "spews" its output onto the
console.  Even the running of the "rc" scripts -- that output seems to
be limited to the console.

Even for info that goes to the console, I'm only partly lucky in being
able to scroll back -- sometimes can't scroll back enough, or something
on occasion mungs the part of the scrollback buffer I want to view.

It know "dmesg" and boot.[o]msg show the kernel's startup messages, but 
maybe
it's when it stop's recording to klog and switches over to syslog that info
written to the console is no longer recorded.

I'd "sorta" like a "console" file like is in boot.msg for the kernel
boot -- something that is appended to for each session, the
re-initialized.  But startup scripts and sometimes drivers and such,
_appear_ to write messages to either /dev/console, /dev/tty, or
stderr/out with it mapped to the console.

I'd prefer not to disturb the way messages are displayed on the console
so when I am in front of the computer it will appear "normal" -- but
want the ability to display those messages when logged in remotely (more
normal case).

Ideas? Clue sticks? :-)
Thanks,
Linda

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
