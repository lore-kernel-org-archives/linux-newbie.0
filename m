From: "J." <mailing-lists@xs4all.nl>
Subject: Re: 2 questions: 1. ssh permissions to 777 and 2. recursively change
 all directories/files to 777
Date: Fri, 10 Dec 2004 14:53:14 +0100 (CET)
Message-ID: <Pine.LNX.4.21.0412101448570.4138-100000@hestia>
References: <41B97C82.8060409@verizon.net>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <41B97C82.8060409@verizon.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Fri, 10 Dec 2004, Jim Nelson wrote:

> Eve Atley wrote:
> > First question...
> > We have people SSHing into our Linux box from overseas (India to US, company
> > access only). But files that are uploaded from these people become read-only
> > to anyone else accessing them. We *require* that they be readable/writable
> > by this side of the pond (US). How can I set this to occur? Otherwise, this
> > method of transferring files will *not* work for us, and perhaps someone can
> > point me to another solution.
> > 
> > Second question...
> > How can I recursively set all files/directories to 777?
> > Chmod -R 777 *.* ... Didn't seem to hit everything.
> > 
> > Thanks!
> > 
> > -Eve
> > 
> Question 1:
> Try setting the umask in the .profile for the people ssh'ing in.

Which every user can change for themselves later on again.. Don't know if
that's desirable..

> Question 2:
> Try the following:
> 
> -----------------------------------[cut]--------------------------------------------
> -----------------------------------[cut]--------------------------------------------
> 
> I use this to fix permissions on a Samba box - you will have to modify or drop the 
> chown line to leave the ownership properties alone.

Why not adding a special group to your /etc/group or setting a default
mask in your smb.conf ? That's what these programs, files are for..
That would eliminate the need of your script.. And is one cronjob
less.. One process less, memory less, cpu cycles less.. etc..

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
