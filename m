From: Jim Nelson <james4765@verizon.net>
Subject: Re: 2 questions: 1. ssh permissions to 777 and 2. recursively change
 all directories/files to 777
Date: Fri, 10 Dec 2004 05:37:54 -0500
Message-ID: <41B97C82.8060409@verizon.net>
References: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00ac01c4de33$b3b63e20$1f0aa8c0@lanadmin>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: eatley@wowcorp.com
Cc: linux-newbie@vger.kernel.org

Eve Atley wrote:
> First question...
> We have people SSHing into our Linux box from overseas (India to US, company
> access only). But files that are uploaded from these people become read-only
> to anyone else accessing them. We *require* that they be readable/writable
> by this side of the pond (US). How can I set this to occur? Otherwise, this
> method of transferring files will *not* work for us, and perhaps someone can
> point me to another solution.
> 
> Second question...
> How can I recursively set all files/directories to 777?
> Chmod -R 777 *.* ... Didn't seem to hit everything.
> 
> Thanks!
> 
> -Eve
> 
Question 1:
Try setting the umask in the .profile for the people ssh'ing in.

Question 2:
Try the following:

-----------------------------------[cut]--------------------------------------------
#!/bin/bash

echo "Chowning files to jim:users..."

find -name \* | sed 's/^/"/' | sed 's/$/"/' | xargs chown jim:users $1

echo " done."

echo "Fixing directory permissions..."

find -type d | sed 's/^/"/' | sed 's/$/"/' | xargs chmod 775 $1

echo " done."

echo "Fixing file permissions..."

find -type f | sed 's/^/"/' | sed 's/$/"/' | xargs chmod 664 $1
echo " done."

-----------------------------------[cut]--------------------------------------------

I use this to fix permissions on a Samba box - you will have to modify or drop the 
chown line to leave the ownership properties alone.

The sed lines enclose the file names in quotes - necessary if there are spaces or 
metacharacters in the file names.  The only thing that breaks the script is 
filenames with doublequotes in them - the only way I can fix them is a manual 
search and repair.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
