From: Ray Olszewski <ray@comarre.com>
Subject: RE: Retrieving deleted files
Date: Wed, 07 Apr 2004 11:54:12 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040407114459.01efa728@celine>
References: <5.1.0.14.1.20040407103249.01efa4a8@celine> <GNEPLLCIIBHICCOGIAKPCEGICJAA.eatley@wow-corp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <GNEPLLCIIBHICCOGIAKPCEGICJAA.eatley@wow-corp.com>
References: <5.1.0.14.1.20040407103249.01efa4a8@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 02:25 PM 4/7/2004 -0400, Eve Atley wrote:


>This question is actually a bit dependent on what filesystem the Linux host
>uses. For ext2, a couple of possibilities are (these are the Debian package
>names; your distro may differ a bit) "e2undel" and "recover".
>
>         That answer is probably ext3fs - I'm running Linux Redhat 9, 
> latest kernel.
>
>         I did try recover, but could not get it to run; it says command 
> not found.
>I have tried to install recover and gtkrecover.

When you "tried" to install recover (I assume from an rpm), did the install 
procedure indicate that it had succeeded or not? If not, what did it say?

What is the "it" that says "command not found"? It is a message from the 
shell (probably bash) that looks something like this:

         ray@kuryakin:~$ recover
         -bash: recover: command not found

Or does recover itself give you a message indicating that some other 
command cannot be found? (I'm assuming you tried this from a command line, 
not from the X frontend gtkrecover ... if not, please do so.)

Where is recover on the system?

         Does "which recover" find it?

         Does "find / -name recover" find it?

Were you trying to run recover as root or as an ordinary user? Could there 
be a PATH issue (what happens if you specify the path to the app explicitly)?

I've no actual experience here, but I'd bet that recover will work on ext3 
... in most respects, ext3 can fall back to ext2. And you can check 
/etc/fstab for the relevant partition to see what filesystem type you are 
using.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
