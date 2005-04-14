From: Ray Olszewski <ray@comarre.com>
Subject: Re: remote admin
Date: Thu, 14 Apr 2005 08:26:13 -0700
Message-ID: <5.1.0.14.1.20050414081105.01f56e38@celine>
References: <200504142239.24316.wheds8@ms66.hinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200504142239.24316.wheds8@ms66.hinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

At 10:39 PM 4/14/2005 -0700, S. Barret Dolph wrote:
>I would like to be able to do some admin stuff on our school computers from
>home. What is best way to do this? Are programs such as "Webmin" better than
>remote logins or just different. The administrative tasks are usually more
>school administration than computer administration but not always just that.
>For example, I am now working on getting chinese input on our school
>computer. School administration work is usually just things like updating
>documents and making sure that the latest materials are available to them.

At the level of generality you have posed this question, it really has no 
one answer. The options available to you depend on how your school 
computers are connected to the Internet (mainly, what sorts of NATing and 
other firewalling are involved), how you normally admin them locally 
(consoles or X, mainly), and the nature and speed of your home (and school) 
connection(s) to the Internet. And, of course, what approaches you 
personally find "better" or "worse" ... for example, I find editing config 
files on a console in vi convenient, but that's just a personal preference, 
not an objective "better".

If everything is fast enough, the firewalling permits it, and you normally 
use X to admin, then consider using remote X sessions via VNC.

If everything is very slow and firewalling is a big issue, then consider 
setting up an ssh server at school that you can log into from home, then 
connect from to the other systems you need to remore admin. Console logins 
will best handle slow speeds.

I haven't used Webmin or anything like it in years, but using it, as best I 
recall, depends on its having the specific modules you need for what you 
want to do. (The Debian packaging system, for example, has a bout 40 
webmin-* modules, each of which does something quite specific.) Check it 
closely against your exact requirements to see if it will serve your "more 
school administration than computer administration" purposes.

Webmin does have a module for uploading documents, so if "updating 
documents and making sure that the latest materials are available to them" 
in practice means creating docs at home and uploading them, Webmin can help 
you do that.

  I can't even begin to guess what is involved in "getting chinese input on 
our school computer", so I don't know what Webmin modules might help with 
that.

In fact, as I reread your message, I can't even tell if you want to be able 
to access one or several hosts at the school ... in one place you say 
"computers" but in another "computer". As usual, the details matter to the 
answer.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
