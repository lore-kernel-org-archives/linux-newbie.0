From: Mike Dresser <mdresser_l@windsormachine.com>
Subject: Re: Samba mount not as root
Date: Fri, 29 Nov 2002 09:55:00 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.33.0211290952470.16324-100000@router.windsormachine.com>
References: <00c701c297b2$327115c0$64fea8c0@pkrausxp>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00c701c297b2$327115c0$64fea8c0@pkrausxp>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Paul Kraus <pkraus@pelsupply.com>
Cc: linux-newbie@vger.kernel.org

On Fri, 29 Nov 2002, Paul Kraus wrote:

> Have written some scripts that perform network backups. However I am
> only able to run them as root. How can give mount permissions to another
> user.

Just a side note, have you seen smbtar?  Might be easier than mounting a
directory and copying it, and then unmounting it.

mdresser@monitor:~$ smbmount //mike/c test
Password:
mdresser@monitor:~$ df /home/mdresser/test
Filesystem           1k-blocks      Used Available Use% Mounted on
//mike/c              15498752   7959040   7539712  52% /home/mdresser/test

Not sure where you're having trouble.  Can you as a user write to mount
point?

Mike

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
