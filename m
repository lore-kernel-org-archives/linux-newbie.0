From: Ray Olszewski <ray@comarre.com>
Subject: Re: /cdrom fails to unmount
Date: Tue, 22 Jul 2003 08:58:40 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030722084626.01eeb000@celine>
References: <001b01c35064$0a9d2b90$abcea695@ads.iu.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.43.0307221116460.20338-100000@perpugilliam.cscl
 ub.uwaterloo.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 11:19 AM 7/22/2003 -0400, Dan Zlotnikov wrote:
>In Deb.woody, kernel 2.4.18, I have the following problem:
>
>mount /cdrom
>"sure," the computer says, "I will."
>
>cd /cdrom
>
>mplayer -fs whateverthehellI'mwatching
>"Okay," says the computer.
>
>cd
>"No problems," says the beast.
>
>umount /cdrom
>umount: /cdrom: device is busy
>Or in other words, "*$^! you!"
>
>No processes that I could identify suggested themselves as the visible
>culprit. Rebooting works, but killing the x-session doesn't.
>
>Help, anyone?

Your fanciful responses from the computer are cute but, in practice, 
distracting and even a bit confusing. In particular, when you report ...

>mplayer -fs whateverthehellI'mwatching
>"Okay," says the computer.

... does the "Okay" stand in for the fact that mplayer *begins* playing the 
file or *finishes* playing the file?

If the first ... if the file is still playing ... then the last message is 
correct, in that mplayer is using the device. (But I'd be surprised to see 
this survive killing X.)

If the second ... after finishing playing, does mplayer exit? Or wait for a 
command? If it waits, it may well retain access to /cdrom until you tell it 
to play something located elsewhere. (But, again, I'd be surprised to see 
this survive killing X.)

Bottom line: *something* is using the device, and it is not clear 
what.  (One wild guess: does the system make it available via NFS?) In any 
case, try running "fuser /cdrom" to get the PIDs of the process(es) 
currently accessing the filesystem. Then deal with the accesses however is 
appropriate to what you find.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
