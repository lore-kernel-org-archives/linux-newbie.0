From: dalgoda@ix.netcom.com (Mike Castle)
Subject: Re: Question about "find -exec"
Date: Wed, 24 Jul 2002 00:07:37 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <pnjlha.6fv.ln@thune.mrc-home.org>
References: <3D36DDA3.FA0F073C@gmx.net> <200207190752.38161.linux-newbie@jimmo.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

In article <200207190752.38161.linux-newbie@jimmo.com>,
James Mohr  <linux-newbie@jimmo.com> wrote:
>You need to tell -exec which file to process. This is done with curly braces:
>
>find /mnt/c/ -name *.snm -exec ls {} \;
>
>However, without the -exec, your command will simply list the files anyway. I 
>am assuming that this is just an example, and you would want to do more than 
>just list the file name. You could exand this concept and use the curly 

Also, you should realize that for each file processed, there is the
overhead of fork()/exec() calls.

You would probably find something like:

find /mnt/c -name '*.snm' | xargs -r ls -l 

to be significantly faster.

If you expect that there will be any spaces involved, consider using
-print0/-0 in addition:

find /mnt/c -name '*.snm' -print0 | xargs -0 -r ls -l 

mrc
-- 
     Mike Castle      dalgoda@ix.netcom.com      www.netcom.com/~dalgoda/
    We are all of us living in the shadow of Manhattan.  -- Watchmen
fatal ("You are in a maze of twisty compiler features, all different"); -- gcc
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
