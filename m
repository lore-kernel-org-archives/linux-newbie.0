From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Fedora core 4 and Totem Media Player??
Date: Tue, 2 May 2006 09:10:08 -0400
Message-ID: <20060502131008.GA1068@lnx2.kvinet.com>
References: <20060501143032.GA1208@lnx2.kvinet.com> <200605020312.k423C8qq004283@skyinet.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200605020312.k423C8qq004283@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

On 05-02, Peter wrote:
> I just checked once more Totem in Fed-4. It does play music CDs, most .wav 
> files, however, not all .mp3 and not .wmv.

	I just found the following that I fetched from somewhere and
it covers playing .mp3 in detail plus many other questions I have..
"Fedora Core 4 Installation Notes" by Stanton Max Finley.. Sorry I
don't have the URL but I must have found it with Google.. He
doesn't like Totem either so details many others.. My current problem
seems to be a codec incompatibility as Ray suggested.. I tried re-
installing FC4 as a WorkStation and Totem acted identical except for
one small item: The pull down menu had an extra icon next to Totem
that was missing from the DeskTop install.. Still NG though...:^(.
> 
> In slackware I have totem tweaked to play them all, however, I seldom use it. 
> I find totem too clumsy and at times unpredictable. If possible I use realplay 
> or xmms or just command 'cdp' for music CDs.
> 
> Case in point, I just upgraded to gnome dropeline 2.14. Now totem crashes when 
> I try to open w/o a file to play, however, it plays and stays open when 
> invoked from command line with file to open: totem file.*.
> 
> Version of totem in slackware now: Gnome totem 1.4.0
> 
> In Fedora4: totem-1.0.2-1.i386.rpm

	It's looking to me that streaming video is a real crap shoot
and it's no wonder I'm have so many problems.. Apprently everything
has to be "GO" to succeed.. The above goes into that in detail even
mentioning some mirrors that upset the apple cart, etc... Finley has
really dug into it in details..

	To confuse the issue more; on someone else's recommendatation
that SuSE v 10.0 is the best media distribution; I tried it... One
machine refused to install it--period.. I didn't finish trying the
other machine because the installation scheme insisted on wanting to
re-format my data drive, hdb, with the reiserfs.. That would have
been a disaster.. Hours into it I was not able to figure out how to
merely install it on hda1, a clean ext3 partation... I gave up.. It
kept reporting that I had to start with the "highest" numbered
partition, and would halt..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
