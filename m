From: Ray Olszewski <ray@comarre.com>
Subject: Re: Where does installed software go?
Date: Sun, 22 Dec 2002 19:22:43 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021222190444.020b5ec0@celine>
References: <5.1.0.14.0.20021222212622.00bb8d08@mail.comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.0.20021222212622.00bb8d08@mail.comcast.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 09:30 PM 12/22/02 -0500, Chris wrote:
>How do I know where software goes when I install it?

Normally, executables will be placed somewhere in the standard PATH (or in 
some cases the PATH for root). For them, use "which" to get the location. 
Other options are the commands "find" and "locate" ... read their man pages 
for the details of how to use them.

>For instance, I just installed Opera on Red Hat 8.0, and
>had to dig around to find it.
> From the root I ran "ls -al -R | grep opera"
>This produced about 16,000 items!

Really? The first part would produce a lot of output, but the grep should 
only return lines that contain "opera", and I wouldn't expect more than a 
couple of dozen such lines on a normal system.

>Through trial and error I was
>able to find the executable, and create a "launcher" on my desktop
>to it.
>
>Next I installed Wine.  I still have no idea where the executable is, but I
>know it's not in my path.  Running "ls -al -R | grep wine" produces even
>more results than when I looked for Opera.

Try "find / -name wine" and see if that gives you something more readable. 
If that doesn't find it, try *wine* instead of wine.

You also might see if rpm has a "list" option that tells you what files are 
in a package. I don't use rpm here (I run Debian, and its similar dpkg 
command has this option), but I did look at the man page for rpm and 
noticed that it has a list option mentioned. So try "rpm -l wine" and see 
if that helps you (or try variants on this, since I may have the syntax wrong).

>Is there a default location for software installations via RPMs?

Alas, no. For years, people have tried to promulgate rules about where 
software should be installed on Linux/Unix systems, and they've actually 
made some progress, in the face of three real problems:

         (1) there is no real "right" answer to this question; rather, the 
benefit comes from having any accepted standard, not the "right" one (just 
as green=GO and red=STOP isn't the "right" color combination, just the one 
we all agree on).

         (2) even in the standards that have been suggested, ambiguity 
remains, because the distinction between "system" and "user" installed 
packages is blurry.

         (3) there is a lot of history behind many of the major packages 
(such as X Window) that violates about every proposed standard.

But as yet there is no operating consensus, despite a lot of goodwill on 
everybody's part.
--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
