From: whitnl73@juno.com
Subject: Re: run scripts as other user
Date: Sun, 2 Mar 2003 00:56:04 -0500 (EST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030302.010513.8.0.whitnl73@juno.com>
References: <5.1.0.14.1.20030228230844.01f4a078@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030228230844.01f4a078@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ray@comarre.com
Cc: linux-newbie@vger.kernel.org

On Fri, 28 Feb 2003, Ray Olszewski wrote:

> ce: bulk
> X-Mailing-List:	linux-newbie@vger.kernel.org
>
> At 12:12 AM 3/1/2003 -0500, [ramzez] wrote:
> >-----BEGIN PGP SIGNED MESSAGE-----
> >Hash: SHA1
> >
> >Hi friends...
> >   Which perms I have to give  to my script if I wanna that other users run it
> >but just how if I run it.
> >   I know that is something with suid but I can't do it
>
> This question is a bit hard to follow. (If, as I suspect from your e-mail
> address, English is not your native language, you might do better to use
> very standard English, rather than try to use informal constructions like
> "perms" and "wanna". My actual problem, though, is needing to guess what
> you mean by "but just how if I run it".)
>
> If I guess your meaning correctly, you want others to be able too execute a
> program, and have it run as though it were executed by you (the file's
> owner).  For example, in order to be able to change their passwords,
> ordinary users need to be able to run the program "passwd" as though they
> were root so they can write to the /etc/shadow file.
>
> You accomplish that by setting the suid bit, which you can do with the command
>
>          chmod +s filename
>
> Try "man chmod" for the details. The program needs to be normally
> executable by the user in question, for example.
>
Try man execve (towards the end, in NOTES) to see why this probably
won't work with a script.
perl claims to handle setuid scripts, but I haven't had the need to
figure out how to work it.  I think the perl interpreter itself has to
be setuid, and then it gets very fussy about checking your script for
booby-traps.

You could write a binary program to call your script, and make it (the
binary program) setuid, I guess, but be careful.

Lawson
 --
---oops---



________________________________________________________________
Sign Up for Juno Platinum Internet Access Today
Only $9.95 per month!
Visit www.juno.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
