From: "Chrisotpher Swope" <SwopeCR@yahoo.com>
Subject: Start Job as specific user at startup
Date: Tue, 5 Nov 2002 04:04:41 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <!~!UENERkVCMDkAAQACAAAAAAAAAAAAAAAAABgAAAAAAAAAXNaavq6Az0CyD0h0hCzYw8KAAAAQAAAA5SN3qsAnvEuvMPWsg6DZmgEAAAAA@yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Dear All,

I have two questions, both closely related.

First, when a job started rc.local, under which user is the job called?
(I might be asking which user owns the job, but I don't know if that's
the same thing).

Second, is there any way to specify under which user a job is started
when it is called from within rc.local?

If you are confused about what I am asking, here is what I am going for:
I want to start the VNC server at startup.  I prefer to call it from
rc.local, because I know how to do that.  I don't want the server
started as root, though, because then when I log in remotely through
VNC, I will be the root user.  That just doesn't sit right with me.
What I would prefer to do is start the server as a less privileged user,
again as the computer starts up.

Thanks for the help,
Christopher Swope


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
