From: Dan Zlotnikov <dzlotnik@artsmail.uwaterloo.ca>
Subject: Re: group
Date: Thu, 25 Dec 2003 10:14:49 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1072365289.3feafee94c30b@ecserv7.uwaterloo.ca>
References: <Pine.LNX.4.21.0312251502520.448-100000@orthanc.lemmerling.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.21.0312251502520.448-100000@orthanc.lemmerling.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

(disclaimer: If it sounds like I'm explaining things to a five-year-old, 
that's because I'm lost, not because I think you are)

Quoting Jos Lemmerling <jos@lemmerling.nl>:

> On Thu, 25 Dec 2003, Dan Zlotnikov wrote:
> 
> > > The default umask can be set in the users profile
> > > (/home/user1/.bash_profile) with the line "umask 002".
> > 
> > Pardon me if I'm confused, but does that mean that any user can change the
> 
> > default umask at will?
> 
> Yes, that's correct. It's also possible to change the umask of all users
> in /etc/profile . I just checked the possibility to apply a umask to a
> single directory, but it doesn't seem to be possible (at least not on a
> ext2/3 filesystem.

That's a tad unfortunate. The problem I'm having is as follows:

foo@alpha: vim Foo (write some text)

I didn't want to bother with new groups, so...
foo@alpha: chmod 777 Foo

foo@alpha: su bar
bar@alpha: vim /home/foo/Foo

Which works just fine, as expected.

umask 002 will set 775 on *all* of that user's files, not just the ones 
in /home/everyone/

> I came accross another option in the man-page:
> If the directory /home/everyone is mounted on a seperate partition, the
> option "grpid" can be used to avoid the use of the SST-bits.

Now *that* is elegant. Hell, I'd move the directory to a different partition, 
just so I could use this :)

> > Not to mention, this will apply to all of that user's files, not just the
> ones 
> > in /home/everyone/
> 
> Should that be a problem then? On my (Debian) systems the default group on
> newly created files is the group of the user itself, so that doesn't make
> any difference. Obviously it's another story when the default group isn't
> its own usergroup.

Ah. Point. So does that mean the user would still have to manually change the 
group of every file in /home/everyone/ to "everyone"?

> 
> What other option do you recommend then?

A login script that would sudo everything in /home/everyone/ to 775 whenever 
one of the users in said group logged in. Would that create problems with 
temporarily locked files, though?

Dan

----------------------------------------
This mail sent through www.mywaterloo.ca
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
