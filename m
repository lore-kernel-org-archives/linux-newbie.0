From: Jos Lemmerling <jos@lemmerling.nl>
Subject: Re: group
Date: Thu, 25 Dec 2003 17:48:59 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0312251655140.448-100000@orthanc.lemmerling.net>
References: <1072365289.3feafee94c30b@ecserv7.uwaterloo.ca>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1072365289.3feafee94c30b@ecserv7.uwaterloo.ca>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 25 Dec 2003, Dan Zlotnikov wrote:

> (disclaimer: If it sounds like I'm explaining things to a five-year-old, 
> that's because I'm lost, not because I think you are)

LOL

No, I'm seven years young...  ;)

> > Yes, that's correct. It's also possible to change the umask of all users
> > in /etc/profile . I just checked the possibility to apply a umask to a
> > single directory, but it doesn't seem to be possible (at least not on a
> > ext2/3 filesystem).
> 
> That's a tad unfortunate. The problem I'm having is as follows:
> 
> foo@alpha: vim Foo (write some text)
> 
> I didn't want to bother with new groups, so...
> foo@alpha: chmod 777 Foo
> 
> foo@alpha: su bar
> bar@alpha: vim /home/foo/Foo
> 
> Which works just fine, as expected.
> 
> umask 002 will set 775 on *all* of that user's files, not just the ones 
> in /home/everyone/

Only the newly created files.

If you have a problem like above, why not use:
"su -c 'vim /home/foo/Foo' foo"   as user bar? Saves a lot of typing!

> I came accross another option in the man-page:
> > If the directory /home/everyone is mounted on a seperate partition, the
> > option "grpid" can be used to avoid the use of the SST-bits.
> 
> Now *that* is elegant. Hell, I'd move the directory to a different partition, 
> just so I could use this :)

Common.. it ain't that much work! ;)

> > Should that be a problem then? On my (Debian) systems the default group on
> > newly created files is the group of the user itself, so that doesn't make
> > any difference. Obviously it's another story when the default group isn't
> > its own usergroup.
> 
> Ah. Point. So does that mean the user would still have to manually change the 
> group of every file in /home/everyone/ to "everyone"?

If you're not using the s-bit, yes. Or... if you umask 000 there will be
no problem reading and writing files without changing the group to
everyone, but that's kind of unsecure to do... ;)

> > What other option do you recommend then?
> 
> A login script that would sudo everything in /home/everyone/ to 775 whenever 
> one of the users in said group logged in. Would that create problems with 
> temporarily locked files, though?

Sudo everything in /home/everyone?? IIRC sudo allows the user to
*execute* a certain command as another user... It has nothing to do with
adjusting file-access itself; of course you can do a "sudo ls" and a "sudo
vim" etc. etc. but that's a lot of work and typing... :)

And you could ask yourself why the users do have seperate logins and not
just one login for all of them...


But if someone knows a way to automagicly set the default permissions on
files in a directory (just like the s-bit for groups does) and *not* using
the umask-thingy, I would like to know! (and not while using samba or an
FTP-daemon, they have their own options for this)


grtz

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.nl)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
