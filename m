From: Ray Olszewski <ray@comarre.com>
Subject: Re: filtering .mp3 packets
Date: Wed, 27 Apr 2005 17:39:04 -0700
Message-ID: <427030A8.8020604@comarre.com>
References: <Pine.LNX.4.21.0504272136300.1172-100000@hestia> <001a01c54b7c$6da1b7f0$660aa8c0@descartes2>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <001a01c54b7c$6da1b7f0$660aa8c0@descartes2>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "John T. Williams" <jtwilliams@vt.edu>
Cc: linux-newbie@vger.kernel.org

John T. Williams wrote:
> I don't know mp3 format, but surely they all have a header that is
> identifiable?  I mean where they store information about the mp3 such as
> speed and title and such.  Surely you could id an mp3 from that information.
> and terminate the stream.
[...]

"Surely" is one of those tricky words. As with most things involving 
traffic analysis, the devil is in the details.

Yes, an MP3 file has some known structure, in the form of (a) an 
*optional* (NOT required, and in practice not always present) "ID3" 
block that provides the sort of information you mention, and (b) a 
structured header to each actual block of musical data. (For more on 
both of these, take a look at 
http://www.oreilly.com/catalog/mp3/chapter/ch02.html .)

Even so, ID'ing an MP3 from this implementation is tricky, at two levels.

First, the standard kernel routing code cannot do it. You still need 
special code to analyze packet content, probably userspace code. As far 
as I know (and, to judge from the other responses in this thread, no one 
else here knows different), there is no off-the-shelf implementation 
available of this sort of filter.

Second, making the "signature" obscure is fairly trivial. Any encrypted 
transfer (e.g., scp, https) makes it impossible for intermediate points 
to analyze packet contents (since any method of doing so would 
constitute a successful man-in-the-middle attack on the encryption, 
hence be a security hole requiring repair. Even doing ZIP of tgz 
compression of the file would make life hard for the router.

Beyond that, the original poster mentioned MP3 as an example of the kind 
of file he wanted to detect and block. If there are several formats he 
wants to block (e.g., OGG, WMA as well as MP3), he'd have to do this on 
a type-by-type basis.

A better strategy might be to monitor the content of the outgoing 
packets to look for (say) http requests that ask for files with .mp3 
extensions to be downloaded. Then pseudo-404 the responses to them. This 
still has its problems, like the encryption problem I mention above, but 
it might be of some help and easier than dissecting the incoming binaries.

BTW, I did look around a bit for solutions, and all I came up with were 
ones that were variants on blacklisting the IP addresses of known 
sources of music files or were straightforward uses of proxy servers. If 
anyone has more general a content-level solution, it would seem to be 
proprietary, not Open Source.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
