From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian-broken package not really broken
Date: Mon, 20 Dec 2004 10:23:55 -0800
Message-ID: <5.1.0.14.1.20041220101506.01f46998@celine>
References: <Pine.LNX.4.58.0412201138120.8949@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.58.0412201138120.8949@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>, linux-newbie@vger.kernel.org

I don't know enough about the differences between libtiff3g and libtiff4 to 
know how reasonable your symlinking is in a substantive sense (shared 
libraries aren't horseshoes, after all, though they sometimes seem to 
resemble hand granades).

I did check and I see that Debian-Sid still maintains both packages 
separately ... so the maintainers presumably see some important difference, 
since they do not adopt your approach. (It does make me wonder why Ubuntu 
offers only one of the choices, though.) I didn't check what Woody or Sarge 
offer.

So ... one workaround would be to install libtiff3g from whichever Debian 
distribution (Woody, Sarge, or Sid) you got links2 from. Another would be 
to do the links2 install from Debian-Sid, since its version of links2 
depends on libtiff4, not libtiff3g.

Or ... the simplest solution might be to use the version of links2 provided 
by Ubuntu, not the Debian one. It appears to be available at ...

         http://mirror.isp.net.au/ftp/pub/ubuntu/pool/universe/l/links2/

... though I don't know why it is not in whatever repository you use.

At 11:58 AM 12/20/2004 -0600, James Miller wrote:
>This inquiry refers to a Debianish variant called Ubuntu and a certain
>Debian package I've found and installed on it. The package wasn't in
>Ubuntu's repository, so I located a .deb and downloaded and installed it
>using dpkg -i. I figured after this I could simply try starting it from
>the command line and install missing dependencies I would see in the
>output.  One missing dependency--libpng--was in the Ubuntu repository, so
>I got that. The other--libtiff3g--was not, and was nowhere to be found.
>Searching my system, I noticed a libtiff4 and some documentation. Reading
>the documentation I came to understand that the version numbering had been
>modified owing to some fault in the code during a certain sequence of the
>3.x series (sorry for such a wierd description, but I really don't
>understand the particulars very well). My close-enough-for-horseshoes
>technical sensibilities told me that libtiff4 would suffice for this
>program, so I proceeded to symlink to libtiff4 the library names the
>program was searching for.  Then, the program worked.  This turned out to
>be some fairly productive flailing, in a sense. But, as usual, there is
>some problem. The problem is with apt-get (Synaptic front end is what I
>use mostly these days, having sissed out in many respects): Synaptic tells
>me there are broken packages and it wants to fix them. The broken package
>is, of course, the one I've made the symlinks to libtiff4 for. "Fixing"
>means removing in this case. I suppose it sees it as broken since,
>technically speaking, it has a missing dependency (libtiff3g). In reality,
>it works just fine with the libtiff4 symlink though.  What I'd like to do
>to "resolve" this is to lie to the system about this program, i.e., to
>either make it think the missing dependency is satisfied or the program
>isn't really installed. Short of doing this, I can't use Synaptic since it
>won't do anything til I "fix" (i.e., remove) the "problem" package. Can
>anyone suggest some solution to this situation?
>
>Thanks, James
>
>PS The "problem" package is Links2.
>
>PPS Boy, if it were Windows interfering with me administering my own
>system, I'd be *really* mad :)




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
