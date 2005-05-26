From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Change permissions of files to -xw +r for all other users
Date: Thu, 26 May 2005 22:50:39 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0505262239430.1464-100000@hestia>
References: <200505262021.43348.rhys@rhyshardwick.co.uk>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200505262021.43348.rhys@rhyshardwick.co.uk>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 26 May 2005, Rhys Hardwick wrote:

> I was just using chmod.  This helps.  I can use find to only select files, not 
> directories, and change the permissions.  However, the real question is how 
> to make chmod not alter the permissions for the files owner, but to remove 
> write and exectute permissions for group and others.  That is the bit that 
> has stumped me.  

Use a `0' a.k.a. zero with `chmod` in the last position

If I would use the command  `ls -l` on an arbitrary file in my directory:
-rw-rw-r--    1 jason   donovan        201 Apr 23 04:14 todo.txt 

Now you can see that the user `jason' has [r]ead[w]rite permissions the
same goes for the group named `donovan' and all other users have only
[r]ead permissions .

chmod 0660 todo.txt

-rw-rw----    1 jason   donovan        201 Apr 23 04:14 todo.txt

Now the permissions for jason and donovan stayed the same; except for all
other users [the world] which have no permissions.

Hope that helped...

J.

> Cheers,
> 
> Rhys

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
