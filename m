From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: Samba mount not as root
Date: Fri, 29 Nov 2002 12:01:10 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0211291150390.16324-100000@router.windsormachine.com>
References: <Pine.LNX.4.50.0211291122190.17955-100000@filesrv1.baby-dragons.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.50.0211291122190.17955-100000@filesrv1.baby-dragons.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Mr. James W. Laferriere" <babydr@baby-dragons.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 29 Nov 2002, Mr. James W. Laferriere wrote:

> > > mdresser@monitor:~$ smbmount //mike/c test
> 	Hmmm ,  My smbmount tool screams at me to use ...  This is with
> 	version 2.2.7 .  Which is highly recomended due to a Security
> 	issue .  Don't know how far back in versions the issue goes tho .

My debian 2.2r6 doesn't let me mount, but debian 3.0 does.

Most odd.  I wonder if i should file a bug.  Ah, looking at
http://bugs.debian.org/cgi-bin/bugreport.cgi?bug=169624, someone did 11
days ago
:)

I'll add in a bug for debian about being able to mount it in the first
place :)

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
