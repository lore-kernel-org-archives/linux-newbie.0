From: Ray Olszewski <ray@comarre.com>
Subject: Re: run scripts as other user
Date: Sat, 01 Mar 2003 23:14:17 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030301230909.01ee2f58@celine>
References: <5.1.0.14.1.20030228230844.01f4a078@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030302.010513.8.0.whitnl73@juno.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: whitnl73@juno.com
Cc: linux-newbie@vger.kernel.org

At 12:56 AM 3/2/2003 -0500, whitnl73@juno.com wrote:
>[...]
> > You accomplish that by setting the suid bit, which you can do with the 
> command
> >
> >          chmod +s filename
> >
> > Try "man chmod" for the details. The program needs to be normally
> > executable by the user in question, for example.
> >
>Try man execve (towards the end, in NOTES) to see why this probably
>won't work with a script.
>perl claims to handle setuid scripts, but I haven't had the need to
>figure out how to work it.  I think the perl interpreter itself has to
>be setuid, and then it gets very fussy about checking your script for
>booby-traps.
>
>You could write a binary program to call your script, and make it (the
>binary program) setuid, I guess, but be careful.
>
>Lawson


Oops, indeed. Thanks, Lawson. I missed that he was asking about a script 
rather than a binary.

I'm not sure where perl claims to "handle" suid scripts, but as a general 
matter, perl was designed to restrict use of suid for security reasons. The 
solution of choice with perl is to use a wrapper binary of the sort you 
refer to in the last paragraph. In fact, my old copy (not the current 
edition) of Programming Perl has a perl script that generates the needed 
wrapper ... a bit silly, since the perl program was more complicated than 
the wrapper, which is simple to create as a template, then edit in vi (or 
whatever) to insert the name of the script you want to run.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
