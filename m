From: James Mohr <linux-newbie@jimmo.com>
Subject: Re: Question about "find -exec"
Date: Fri, 19 Jul 2002 07:52:38 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200207190752.38161.linux-newbie@jimmo.com>
References: <3D36DDA3.FA0F073C@gmx.net>
Reply-To: linux-newbie@jimmo.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3D36DDA3.FA0F073C@gmx.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Lx Newbie List <linux-newbie@vger.kernel.org>

On Thursday 18 July 2002 17:24, Oliver Ob wrote:
> I want to find and list all files with *.snm ending.
> find /mnt/c/ -name *.snm -exec ls
> does not work, the man page does tell me french fries.
>
> What am I missing?

You need to tell -exec which file to process. This is done with curly braces:

find /mnt/c/ -name *.snm -exec ls {} \;

However, without the -exec, your command will simply list the files anyway. I 
am assuming that this is just an example, and you would want to do more than 
just list the file name. You could exand this concept and use the curly 
braces anywhere in the command. So, to move the files you find to another 
directory you might have this:

find /mnt/c/ -name *.snm -exec mv {} /somewhere/else \;

Note that the \; tells the -exec that you are at the end of the command. For 
details on using find with other commands, check this out:

http://www.linux-tutorial.info/cgi-bin/display.pl?32&0&0&0&3

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
