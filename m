From: Ray Olszewski <ray@comarre.com>
Subject: Re: startx
Date: Wed, 16 Jul 2003 11:29:23 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030716112332.01ff0c30@celine>
References: <HBEJLOFMLEPBMAAEFNFDOELNCAAA.azapata@du.edu>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <HBEJLOFMLEPBMAAEFNFDOELNCAAA.azapata@du.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 12:09 PM 7/16/2003 -0600, Anna G. Zapata wrote:
>Hi all,
>
>I have startx configured to startup when I boot the machine, however, it
>doesn't work.  I still have to type startx at the command line.  Any ideas
>as to what's going on here?

"it doesn't work" is not a problem description. Try again, and this time 
tell us:

1. What Linux distro and version you are using.

2. What you actually did that you summarize here as "I have startx 
configured to startup when I boot the machine". For example, are you 
running "startx" from an init script? If so, what script, and how is it 
symlinked to the default runlevel?

3. What errors (if any) does startx (or the init script or whatever you do) 
report? Where this might be depends on how you are doing it. Maybe in a log 
file. Maybe in an e-mail to root. Maybe someplace else.

4. What userid do you intend X to be running as? How do you make it do that?

All that said ... the *usual* way to boot directly into X is not with 
startx, but with a display manager like xdm or gdm. Do you have some reason 
for not doing it that way?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
