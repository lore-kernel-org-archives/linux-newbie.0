From: James Miller <jamtat@mailsnare.net>
Subject: Re: framebuffer console problems
Date: Fri, 22 Oct 2004 14:00:37 -0500 (CDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.58.0410221351360.1287@debian-emach>
References: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0410221108580.1287@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Looking over the framebuffer how to again (fairly dated document by now)
I'm beginning to wonder if maybe my video card doesn't require a special
framebuffer module.  There, under section 5.6 "Got an ATI card?" they
mention a particular module--atyfb.  In my initrd, on the other hand, I
appear to have only the generic vesafb module available.  To test this, I
suppose my options are: 1) recompile the kernel with built in atyfb
module; 2) create a new initrd with atyfb in place of vesafb [and 2a)
enter the correct command for loading that module into menu.lst].  Before
going to the trouble of either of those (a big distraction considering my
level of ignorance and the amount of study and experimentation I'd need to
do for either), I'd just like to ask for an opinion about whether anyone
thinks I might be on the right track to resolving my problem with not
being able to get a 1024x768 console by trying one or other of these?
Feedback, please?

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
