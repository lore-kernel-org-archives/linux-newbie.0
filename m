From: James Mohr <linux-newbie@jimmo.com>
Subject: Re: Question about "find -exec"
Date: Wed, 24 Jul 2002 18:07:06 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207241807.06375.linux-newbie@jimmo.com>
References: <3D36DDA3.FA0F073C@gmx.net> <200207190752.38161.linux-newbie@jimmo.com> <pnjlha.6fv.ln@thune.mrc-home.org>
Reply-To: linux-newbie@jimmo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <pnjlha.6fv.ln@thune.mrc-home.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Wednesday 24 July 2002 09:07, Mike Castle wrote:
> In article <200207190752.38161.linux-newbie@jimmo.com>,
>
> James Mohr  <linux-newbie@jimmo.com> wrote:
> >You need to tell -exec which file to process. This is done with curly
> > braces:
> >
> >find /mnt/c/ -name *.snm -exec ls {} \;
> >
> >However, without the -exec, your command will simply list the files
> > anyway. I am assuming that this is just an example, and you would want to
> > do more than just list the file name. You could exand this concept and
> > use the curly
>
> Also, you should realize that for each file processed, there is the
> overhead of fork()/exec() calls.
>
> You would probably find something like:
>
> find /mnt/c -name '*.snm' | xargs -r ls -l
>
> to be significantly faster.
>
> If you expect that there will be any spaces involved, consider using
> -print0/-0 in addition:
>
> find /mnt/c -name '*.snm' -print0 | xargs -0 -r ls -l
>
> mrc

Valid point. However, I typically don't find it an issue unless you are 
running the -exec on 10K files. If it takes 0.1 second with xargs and 1 
second with -exec (which is 10 times as long), I don't see it is worth 
arguing about. 

However, it is **definately** worth mentioning and I have made a note to add 
it to my Linux Tutorial.

Regards,

jimmo

-- 

---------------------------------------
"Be more concerned with your character than with your reputation. Your
character is what you really are while your reputation is merely what others
thing you are." -- John Wooden
---------------------------------------
Be sure to visit the Linux Tutorial:  http://www.linux-tutorial.info
---------------------------------------
NOTE: All messages sent to me in response to my posts to newsgroups or forums
are subject to reposting.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
