From: James Miller <jamtat@mailsnare.net>
Subject: tune2fs configuration
Date: Fri, 11 Jul 2003 14:59:40 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.56.0307111445050.1107@homenet>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Linux-Newbie list <linux-newbie@vger.kernel.org>

Well, I have another not-too-profound Linux inquiry - this time about
configuring tune2fs (yes, this is for an older ext2 filesystem).  I have a
hard drive that's acting a bit punchy, and I'd like for the filesystem
integrity to be checked quite a bit more frequently than usual: say, every
5 boots or so.  It was indicated to me that tune2fs is the utility to use
for this.  Looking over the man page has not exactly been helpful though.
From it, I've understood that the option "-c" is the one I'm probably
after.  I think there should probably be some numerical value following
"-c" (with an intervening space).  But my attempt to get it working seems
to be unsuccessful: nothing gives me any indication that the setting I'm
trying to get tune2fs to use is taking.  To the contrary, when I type what
seems to me the correct command sequence (tune2fs -c 5), I get a sort of
mini-help menu.  In other cases using Linux, this has been the
machine's/coder's indication that something was not done right, and the
way they want to let you know is by providing some help, apparently under
the assumption that the mini help menu is going to address your confusion.
It hasn't addressed mine so far: I may be denser than the average lot,
though.  In any case, the manpage, unlike other, more thoughtful manpages,
doesn't give any examples.  For these reasons, I'm sort of at a loss.  Can
someone chip in with some helpful suggestions?  E.g., how can I know that
tune2fs has "taken" the settings I'm trying to enter?  If it's not, how
can I determine what I'm doing wrong?  Are there other applications or
utilities besides tune2fs that can do what I want, and if so, what are
they?

Thanks, the befuddled James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
