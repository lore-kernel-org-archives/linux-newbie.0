From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Elvis and crontab
Date: Tue, 29 Mar 2005 11:42:47 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0503291137120.560-100000@hestia>
References: <200503290541.j2T5f6HY001659@skyinet.net>
Reply-To: linux <linux-newbie@vger.kernel.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200503290541.j2T5f6HY001659@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

On Tue, 29 Mar 2005, Peter wrote:

> Hi,
> 
> In slackware, crontab is using elvis as the editor instead of vim and I can't 
> make heads or tails out of it.
> 
> Does anybody know how to change this from elvis to vim or better yet to a more 
> user friendly editor?
> 
> Thanks & regards
> -- 
> Peter

Change and export the appropiate EDITOR variable in the init files of
your shell. For the bash shell, in your .bashrc .
 export EDITOR=vim

After that either re login or source the change file:
~: source .bashrc

Quality is nothing more then the demands someone has of something, same
goes for user friendlyness. According to my def. of user-friendly VIM is
very userfriendly. You only need to know three to four keystroke commands
to make it all work. Surely those four commands can't be much of a problem
?

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
