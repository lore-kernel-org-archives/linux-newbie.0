From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: tune2fs configuration
Date: Sat, 12 Jul 2003 09:09:49 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200307120909.49217.pa3gcu@zeelandnet.nl>
References: <Pine.LNX.4.56.0307111445050.1107@homenet>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.56.0307111445050.1107@homenet>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>, Linux-Newbie list <linux-newbie@vger.kernel.org>

On Friday 11 July 2003 21:59, James Miller wrote:
> Well, I have another not-too-profound Linux inquiry - this time about
> configuring tune2fs (yes, this is for an older ext2 filesystem).  I have a
> hard drive that's acting a bit punchy, and I'd like for the filesystem
> integrity to be checked quite a bit more frequently than usual: say, every
> 5 boots or so.  It was indicated to me that tune2fs is the utility to use
> for this.  Looking over the man page has not exactly been helpful though.
> From it, I've understood that the option "-c" is the one I'm probably

You need to do ;
tune2fs -c 20 /dev/hda1

20 and /dev/hda1 are examples change to suit your situation.

> Thanks, the befuddled James

-- 
If the Linux community is a bunch of theives because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
