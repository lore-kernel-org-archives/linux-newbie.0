From: Jos Lemmerling <jos@lemmerling.nl>
Subject: Re: group
Date: Thu, 25 Dec 2003 15:20:30 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0312251502520.448-100000@orthanc.lemmerling.net>
References: <1072360334.3feaeb8e1ca4d@ecserv7.uwaterloo.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1072360334.3feaeb8e1ca4d@ecserv7.uwaterloo.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 25 Dec 2003, Dan Zlotnikov wrote:

> > The default umask can be set in the users profile
> > (/home/user1/.bash_profile) with the line "umask 002".
> 
> Pardon me if I'm confused, but does that mean that any user can change the 
> default umask at will?

Yes, that's correct. It's also possible to change the umask of all users
in /etc/profile . I just checked the possibility to apply a umask to a
single directory, but it doesn't seem to be possible (at least not on a
ext2/3 filesystem.

I came accross another option in the man-page:
If the directory /home/everyone is mounted on a seperate partition, the
option "grpid" can be used to avoid the use of the SST-bits.

> Not to mention, this will apply to all of that user's files, not just the ones 
> in /home/everyone/

Should that be a problem then? On my (Debian) systems the default group on
newly created files is the group of the user itself, so that doesn't make
any difference. Obviously it's another story when the default group isn't
its own usergroup.

What other option do you recommend then?


grtz

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.nl)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
