From: lawson_whitney@juno.com
Subject: Re: Tcsh: Append output to a file
Date: Tue, 14 May 2002 22:44:16 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020514.225033.134663624.0.lawson_whitney@juno.com>
References: <20020515011704.GC1047@neon>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020515011704.GC1047@neon>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: axel@hh59.org
Cc: linux-newbie@vger.kernel.org

On Wed, 15 May 2002, Axel H. Siebenwirth wrote:

>
> Okay. First off, thank you!
> I confused myself. Shell chaos. I'm using tcsh as all my login shells. But
> the startup scripts are all bash scripts. So I really asked my self why what
> you told me works on command line but not from the script.
>
> Can you please tell me how to the same thing for bash? :)
>
> Thank you,
> Axel Siebenwirth
> -
First off, you don't _have_ to use bash for scripts.  Instead of
starting the script #!/bin/[ba]sh, it can start #!/bin/tcsh.

If you want to use bash, this should do it:

Script started on Tue May 14 22:38:27 2002
[whit@giftie whit]$ echo $SHELL >file 2>&1
[whit@giftie whit]$ echo $SHELL $SHELL >>file 2>&1
[whit@giftie whit]$ cat file
/bin/bash
/bin/bash /bin/bash
[whit@giftie whit]$ exit

Script done on Tue May 14 22:39:30 2002

Lawson
---oof---



________________________________________________________________
GET INTERNET ACCESS FROM JUNO!
Juno offers FREE or PREMIUM Internet access for less!
Join Juno today!  For your FREE software, visit:
http://dl.www.juno.com/get/web/.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
