From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: Re: problems with sending "meta" keystrokes across xterm
Date: Thu, 27 Oct 2005 22:37:17 -0400 (EDT)
Message-ID: <Pine.LNX.4.44.0510272222140.21592-100000@treebeard.engin.umich.edu>
References: <Pine.LNX.4.44.0510090035440.29170-100000@treebeard.engin.umich.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0510090035440.29170-100000@treebeard.engin.umich.edu>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Heres an alternate variation to the problem in the last email - 

The meta-key codes (at least as far as a remote bash shell opened from an
xterm goes) seem to get transmitted alright if I enable (with a mouse) the
"Meta Sends Escape" option on the "Main Options" menu of an xterm window.
How can I start the xterm with that option (resource) enabled ?

I tried setting it via the -xrm argument to xterm, e.g. 
$ xterm -xrm 'Xterm*metaSendsEscape: true'

This did not seem to do it, however. All help is appreciated. 

Thanks and regards,

-K


On Sun, 9 Oct 2005, at 00:53, Karthik Vishwanath wrote to linux-newbie@vger...:

> Hello,
> 
> I have trouble with when I try to use Meta-<key> characters (for e.g. to
> navigate/edit a bash command line) in a remote bash session via ssh from
> an xterm client - the keystrokes get garbled and frequently are translated
> into some undesired behavior in the (remote) shell. CTRL-<key>
> combinations work perfectly fine, though. Also, the problem disappears if 
> I:
> 
> (a) log into the remote machine and run an xterm on that machine (while
> forwarding X connections)
> 
> (b) run another terminal client such as xterminal locally and then log 
> into the remote machine. 
> 
> I prefer to use xterm to xterminal. How can fix it so that I can continue 
> to use xterm but still have all shell editing functionality even in 
> remote ssh sessions? 
> 
> On a connected issue, running `man` on the remote machine (while logged in
> from my local xterm client) causes many characters to be garbled in the
> display. The only way that this gets fixed is by using (a) above.
> 
> 
> All help is appreciated. Please excuse the lack of "relevant details", if
> so, for the ignorance of not knowing what to include...
> 
> 
> Regards,
> 
> -K
> 
> --------------
> Freedom is not worth having if it does not include the freedom to 
> make mistakes.
> 
> 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
