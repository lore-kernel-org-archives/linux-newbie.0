From: Stephen Samuel <samuel@bcgreen.com>
Subject: Re: How to hide . folders
Date: Fri, 06 Aug 2004 23:02:48 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <41147088.9050803@bcgreen.com>
References: <BD385D76.3EE4%eatley@wow-corp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BD385D76.3EE4%eatley@wow-corp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Eve Atley <eatley@wow-corp.com>
Cc: Linux-Newbie <linux-newbie@vger.kernel.org>

Eve Atley wrote:
> Ken, thanks for the reply.

> Is my question better stated, then, as how to prevent users from deleting
> any of the directories they encounter? If that's the correct question, then
> is my solution to set a read-only on any folders that I don't wish deleted?

There are a couple of things here:

if you set the sticky bit ( u+t ) then users will only be able to delete
files that they own unless they own the sticky

The ability to delete files depends on the permissions of the directory
they are in. Removing a directory requires permission to the directory that
contains it as well as that the directory be empty. If a directory is
readonly to a user and contains *anything* (other than . and ..) then it
is effectively un-removable regardless of parent directory permisions.
It is still renameable if the directory is rw with no sticky bit set.

> 
> 
>>something : system directories show up if you go too far up the
>>hierarchy, but permissions should prevent you writing in them.
> 
> 
> Is it possible to keep users from proceeding up further in the hierarchy, by
> chance? 

If you lave the execute bit on but turn off the read bit, then
programs (including GUIs) will be unable to search the directory.
Any program which knows the name of the file it's looking for
will still work fine.  I think that this may be close enough to
what you want.

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
