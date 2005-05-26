From: "J." <mailing-lists@xs4all.nl>
Subject: Re: Debian 3.0r5 Cursor??
Date: Thu, 26 May 2005 23:55:08 +0200 (CEST)
Message-ID: <Pine.LNX.4.21.0505262352000.1601-100000@hestia>
References: <20050526205441.GA743@lnx2.w8mch.ampr.org>
Reply-To: linux-newbie@vger.kernel.org
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20050526205441.GA743@lnx2.w8mch.ampr.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 26 May 2005, Hal MacArgle wrote:
>
> A long time Slackware junkie I thought I'd try Debian 3.0r5;
> purchasing the 7 CD distribution.. In touch with list member James
> Miller I find he hasn't experienced my problem with his install, of
> another Debian version; therefore this listing.
> 
> The problem is that I don't like a block cursor, preferring the old
> standard IBM underline... I find selecting Debian "vanilla", kernel
> 2.2.20, that is the case but I want to install kernel 2.4 "bf24" that
> defaults to the block cursor for the install and run...
> 
> I've exhausted all my books on the subject and looked at the various
> bash rc files, etc, to no avail... Never running into this before;
> I'm stuck... Is there an easy fix???
> 
> So far I've only installed the very basic files plus a few apps I
> can't do without," -- no GUI, etc... TIA!!

I think you should take a look at this paper - section 5.9 it states:
http://www.faqs.org/docs/Linux-HOWTO/Framebuffer-HOWTO.html

The cursor appearance is controlled by a

<ESC>[?1;2;3c

escape sequence where 1, 2 and 3 are parameters described below. If you
omit any of them, they will default to zeroes.

Parameter 1 specifies cursor size (0=default, 1=invisible, 2=underline,
..., 8=full block) + 16 if you want the software cursor to be applied + 32
if you want to always change the background colour + 64 if you dislike
having the background the same as the foreground. Highlights are ignored
for the last two flags. 

........ Hope that works..

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
