From: Ray Olszewski <ray@comarre.com>
Subject: Re: Sequence of events at init (was boot) - fixed (sort of)
Date: Fri, 13 Oct 2006 09:15:22 -0700
Message-ID: <452FBB9A.5070509@comarre.com>
References: <53876815734.20061011215642@wa5rrh.us> <4b0d6e0d0610112357n67e2ca1fxe317a07fff725793@mail.gmail.com> <452E6539.4090902@comarre.com> <52946266531.20061012171413@wa5rrh.us> <452EC95D.6050807@comarre.com> <100951833359.20061012184700@wa5rrh.us> <452ED9D1.3010002@comarre.com> <20061013131151.GA1071@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20061013131151.GA1071@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal wrote:
> On 10-12, Ray Olszewski wrote:
> 
>>I don't use jstar or its ancestor joe, but the 
>>Debian package for joe describes it as WordStar-like. That means -- at 
>>least in its jstar configuration -- it is a fullscreen editor using 
>>(probably) nsurses, and it may not function properly when called 
>>non-interactively, say, as any bash script might.
> 
> 
> 	I know Ray encourages comments like this; so AFAIK, since
> I've been using Joe and it's many key mapping derivatives, Joe runs
> vga=normal and doesn't need curses, at least the versions I'm using.
> <grin>  Correct me if wrong..

You're right that I do favor this kind of kibitzing. It's why I always 
try to keep my responses on-list, not private (though I messed up this 
time around with one reply).

That said, here's what the Debian package archive says about joe:

Package: joe
Priority: optional
Section: editors
Installed-Size: 880
Maintainer: Josip Rodin <joy-packages@debian.org>
Architecture: i386
Version: 3.3-5
Depends: libc6 (>= 2.3.2.ds1-21), libncurses5 (>= 5.4-1)

If Debian thinks joe *depends* on libncurses5, then joe does most likely 
*use* ncurses. That's quite consistent with vga=normal; you may have 
been thinking of libsvga, which accesses vga graphics mode without using X.






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
