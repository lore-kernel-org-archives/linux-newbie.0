From: Ray Olszewski <ray@comarre.com>
Subject: Re: path Setting
Date: Sun, 13 Jul 2003 07:25:43 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030713071527.0207fea0@celine>
References: <5.1.0.14.1.20030712195144.02087a90@celine>
 <200307121952.17152.sotl155360@earthlink.net>
 <5.1.0.14.1.20030712195144.02087a90@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200307130912.13918.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Linux Newbie <linux-newbie@vger.kernel.org>

See below, inline.

At 09:12 AM 7/13/2003 -0400, Frank Roberts - SOTL wrote:
>Hi All & Thanks for the responses
>
>Often simple sounding questions open complex cans of worms
>
>In my initial thinking I believed that one could simply open the apporiate
>file edit the path statement anb be on one's way.
>
>Alas that is not so.
>The files are no longer simple text files but complex program files.

What do you mean by this?


>So lets get to the real isue.
>
>My root path is as follows:
>/sbin:/usr/sbin:/bin:/usr/bin:/usr/X11R6/bin:/usr/local/bin
>     :/usr/local/sbin:/usr/lib/qt3/bin:/usr/lib/jdk-1.4.1_01/bin
>
>My user path is:
>/usr//bin:/bin:/usr/bin::/usr/local/bin:/usr/X11R6/bin:/usr/games:/usr/lib/jdk-1.4.1_01/bin
>
>Now to me the user path appears to have a few problems.
>One being // instead of /, another being :: instead of :, and more important
>no qt3 path.

Actually the first two things, while definitely errors, are harmless.

>I attempted to edit the user path by:
>PATH=/sbin:/usr/sbin:/bin:/usr/bin:/usr/X11R6/bin:/usr/local/bin
>     :/usr/local/sbin:/usr/lib/qt3/bin:/usr/lib/jdk-1.4.1_01/bin

What file did you make this change in? Did you edit an existing line or add 
a new one? If the second, did you follow it by "EXPORT PATH", and are you 
sure that it is the *last* PATH= statement in the file?

>but when I close the terminal and reopen the terminal to check the path has
>reurned to its original form.

As I said last night, some config files handle only initial login shells, 
while others affect post-login shells. So what "the terminal" is matters to 
your problem, as does which file you edited. Be more exact about what 
"reopen the terminal" means. Did you log out, then login again, to a 
console (a vt)? Close, then open an xterm or eterm? Quit, then start, an 
ssh or telnet session?

>Would some one please enlightnment me as to the corrrect procedure for
>changing this path.

The statement you report adding, if followed by an "EXPORT PATH" line 
should work in principle. You've been tripped up by the details, but I 
can't say exactly where, since you didn't describe what you did in the 
needed detail.

You can also try adding this at the end of ~/.bashrc

         PATH=$PATH:/usr/lib/qt3/bin:/usr/lib/jdk-1.4.1_01/bin
         EXPORT PATH

Then log out completely as that user and log in afresh from a vt or ssh 
connection or xdm screen (or other variant).

>PS: The above path statement comes from a MD 9.1 notebook. I have Md 9.1 also
>set up on a desktop for testing. It has the same user path errors (to me).
[old stuff deleted]



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
