From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: Convert PBM to ascii text??
Date: Thu, 11 Mar 2004 10:16:48 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040311151648.GA599@lnx2.w8mch.ampr.org>
References: <5.1.0.14.1.20040308130547.01f63e50@celine> <20040308204535.GA1010@lnx2.w8mch.ampr.org> <5.1.0.14.1.20040308130547.01f63e50@celine> <5.1.0.14.1.20040309070617.01fde278@celine> <20040310135900.GA614@lnx2.w8mch.ampr.org> <Pine.LNX.4.58.0403100842190.1024@debian-emach>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <Pine.LNX.4.58.0403100842190.1024@debian-emach>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On 03-10, James Miller wrote:
> Sounds like a good alternate solution for you, Hal - but one which is
> likely only available for proprietary operating systems produced by
> corporations bent on world market domination - would be speech recognition
> software.  Read your friend's note into the computer, and have it produce
> typed and formatted text.  I guess it'll be a few years before I can say:
> "Hal, why don't you look into speech recognition software for Linux as a
> solution to this problem?"  Meantime, we can at least dream about it and
> identify it as a need, can't we?
> 
> James

	Greetings: Good suggestion - never thought of that, but I've
found it easier to confront him with the query of why he insists on
snail mail when he has all kinds of computer power, etc.. <grin>

> 
> PS  This presumes you've got audio-in working on your Linux box, which can
> be another challenge in itself.

	Simple audio for this kind of thing no real problem according
to my notes which I wont confirm.. And have to presume the levels are
default OK and that the mic input isn't muted.. <g>

dd bs=8k count=(n in seconds) < /dev/audio > sample.voc  #[record]

cat sample.voc > /dev/audio	#[listen]

Oh but the file lengths. <grin> Thanks again.. (Don't know where I
got the above but it did work when I tried using it for a singing
"telegram." HI..

    Hal - in Terra Alta, WV - Slackware GNU/Linux 9.0   (2.4.20)
		Utrum Per Hebdomadem Perveniam
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
