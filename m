From: joy merwin monteiro <joy.merwin@gmail.com>
Subject: Re: filtering .mp3 packets
Date: Fri, 29 Apr 2005 08:35:36 +0530
Message-ID: <4b0d6e0d050428200525186e50@mail.gmail.com>
References: <Pine.LNX.4.21.0504272136300.1172-100000@hestia>
	 <001a01c54b7c$6da1b7f0$660aa8c0@descartes2>
	 <427030A8.8020604@comarre.com>
Reply-To: joy_mm@ieee.org
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <427030A8.8020604@comarre.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: "John T. Williams" <jtwilliams@vt.edu>, linux-newbie@vger.kernel.org

Hi,

Since this thread dealt mainly with blocking p2p downloading of 
mp3s since they consume large b/w, and has come to a discussion of
https and scp,
I wanted to know wether any p2p protocol uses the above......
or even wehter they use compression.......

if neither is the case, what John said seems to be reasonable,, since
MP3 _has_ to have a header......

blocking all outgoing http requests for or blocking all incoming MP3's
will prevent genuine users who need it. alternatively, there should be
a limit of connections that a user can open at a single time to get
MP3s... since most p2p protocol that i've encountered always try to process
the waiting list as fast as possible by downloading multiple files all
at once....

Comments. anyone?

regards,
Joy

> Second, making the "signature" obscure is fairly trivial. Any encrypted
> transfer (e.g., scp, https) makes it impossible for intermediate points
> to analyze packet contents (since any method of doing so would
> constitute a successful man-in-the-middle attack on the encryption,
> hence be a security hole requiring repair. Even doing ZIP of tgz
> compression of the file would make life hard for the router.
> 
> Beyond that, the original poster mentioned MP3 as an example of the kind
> of file he wanted to detect and block. If there are several formats he
> wants to block (e.g., OGG, WMA as well as MP3), he'd have to do this on
> a type-by-type basis.
> 
> A better strategy might be to monitor the content of the outgoing
> packets to look for (say) http requests that ask for files with .mp3
> extensions to be downloaded. Then pseudo-404 the responses to them. This
> still has its problems, like the encryption problem I mention above, but
> it might be of some help and easier than dissecting the incoming binaries.
> 
> BTW, I did look around a bit for solutions, and all I came up with were
> ones that were variants on blacklisting the IP addresses of known
> sources of music files or were straightforward uses of proxy servers. If
> anyone has more general a content-level solution, it would seem to be
> proprietary, not Open Source.
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
<ed__> riel: if it were a vax, gcc would probably be an opcode

	- excerpt from #kernelnewbies
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
