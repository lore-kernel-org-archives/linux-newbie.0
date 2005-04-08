From: Ray Olszewski <ray@comarre.com>
Subject: Re: How to pick a distro?
Date: Thu, 07 Apr 2005 22:55:07 -0700
Message-ID: <5.1.0.14.1.20050407224150.0206b1f0@celine>
References: <200504080203.j3823di3000665@skyinet.net>
 <200504080203.j3823di3000665@skyinet.net> <42558DE0.3070808@comcast.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <42558DE0.3070808@comcast.net>
References: <200504080203.j3823di3000665@skyinet.net>
 <200504080203.j3823di3000665@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 07:45 PM 4/7/2005 +0000, Jeremy Abbott wrote:
[...]
>I bought Suse about a year ago.  Very nice Distro with package
>management through Yast.  My problem with it though, was that it does
>not come with a C compiler.  If all youare installing is binary
>packeges, that's fine.  I wanted to do some compiling from source though.

Are you sure of this, Jeremy?

I just checked the online package repository for SuSE at 
ftp://ftp.suse.com/pub/suse/i386/current/suse/i586, and there I see all the 
usual compiler packages ... for example: gcc (the C compiler), g++ (the C++ 
variant of gcc), the *-devel header files for the libraries, gdb (the 
standard debugger) and ddd (its X frontend).

I suspect that either what you bought was a limited subset of SuSE ... 
possible, I suppose, since the iso image for the full distro is about 3.5 
GB, requiring a DVD to hold it ... or you misunderstood the docs that came 
with what you got.

I can't recall ever seeing a full-size Linux distro that did not include 
the full suite of compilers it needed to compile all its own source. If 
nothing else, you need this to compile custom kernels, a fairly common 
activity among experienced users of all distros.

And as we all know, anyone who provides you with a CD or DVD of binaries 
needs to provide you with access to the associated source, at least for the 
GPL'd packages.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
