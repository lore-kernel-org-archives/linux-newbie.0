From: "Mr. James W. Laferriere" <babydr@baby-dragons.com>
Subject: Re: Samba mount not as root
Date: Fri, 29 Nov 2002 11:39:17 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.50.0211291122190.17955-100000@filesrv1.baby-dragons.com>
References: <Pine.LNX.4.33.0211290958410.16324-100000@router.windsormachine.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.33.0211290958410.16324-100000@router.windsormachine.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mike Dresser <mdresser_l@windsormachine.com>
Cc: linux-newbie@vger.kernel.org


	Hello Mike ,

On Fri, 29 Nov 2002, Mike Dresser wrote:
> On Fri, 29 Nov 2002, Mike Dresser wrote:
> > On Fri, 29 Nov 2002, Paul Kraus wrote:
> > > Have written some scripts that perform network backups. However I am
> > > only able to run them as root. How can give mount permissions to another
> > > user.
> > Just a side note, have you seen smbtar?  Might be easier than mounting a
> > directory and copying it, and then unmounting it.
> > mdresser@monitor:~$ smbmount //mike/c test
	Hmmm ,  My smbmount tool screams at me to use ...  This is with
	version 2.2.7 .  Which is highly recomended due to a Security
	issue .  Don't know how far back in versions the issue goes tho .
---qoute.
This command is designed to be run from within /bin/mount by giving
the option '-t smbfs'. For example:
  mount -t smbfs -o username=tridge,password=foobar //fjall/test /data/test
---
	More below .

> > Password:
> > mdresser@monitor:~$ df /home/mdresser/test
> > Filesystem           1k-blocks      Used Available Use% Mounted on
> > //mike/c              15498752   7959040   7539712  52% /home/mdresser/test
>
> mdresser@monitor:~$ umount /home/mdresser/test
> umount: //mike/c: not found
> umount: /home/mdresser/test: must be superuser to umount
>
> Humm.  This is very interesting :)
>
> Bug in my mount program, I'd say.  Either shouldn't let me mount, or
> should let me unmount.
	The below is what I get when attempting to use it thru 'mount' as
	a plain user . I also agree with you it's a bug in the tool being
	used .  I have not even attempted to allow users to use 'mount' .
	As with the best of local controls it can still be a dangerous
	functionality .  Hth ,  JimL

~ $ mount -t smbfs -o username=james //jimmysplace/home ~/mount-here
mount -t smbfs -o username=james //jimmysplace/home
mount: only root can do that

-- 
       +------------------------------------------------------------------+
       | James   W.   Laferriere | System    Techniques | Give me VMS     |
       | Network        Engineer |     P.O. Box 854     |  Give me Linux  |
       | babydr@baby-dragons.com | Coudersport PA 16915 |   only  on  AXP |
       +------------------------------------------------------------------+
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
