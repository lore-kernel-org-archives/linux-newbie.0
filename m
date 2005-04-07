From: Yawar Amin <yawar.amin@gmail.com>
Subject: Re: How to pick a distro?
Date: Thu, 7 Apr 2005 14:50:37 +0800
Message-ID: <efc7f7d00504062350e6d18e5@mail.gmail.com>
References: <425440DE.4000403@gmail.com>
Reply-To: Yawar Amin <yawar.amin@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <425440DE.4000403@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi NNK,

On Apr 7, 2005 4:04 AM, NNK <savantedge@gmail.com> wrote:
> I was wondering what I should be looking at in the different distros
> before picking one to use.
> 
> Being a total novice, I don't have much experience on Linux, so I'm
> wondering what I should be asking.
> 
> Any advice?

I can also give you a couple of tips :-)

You may appreciate a distro that comes with a full set of CDs, so you
don't have to download the internet+1 just to get the stuff that you
like to use. This may be the case even if you have a fast connection
because online package repositories can get overloaded and/or taken
down from time to time, or the software which goes and gets the
packages for you from the 'net may be slightly misconfigured, and give
you all sorts of headaches.

Full-CD distros like Debian, Fedora Core, SUSE, and Mandrake come to
mind. Here's what I think: Debian is excellent, but ... outdated. And
if you want to be cautious and not try to do full upgrades from the
'net for fear of breaking something, then you're stuck with older
stuff. (Sorry, Ray! I had to get that out. I myself use MEPIS, which
is Debian-based. And I `broke' it by doing a dist-upgrade before first
installing all the stuff I like.)

Fedora Core is also great. I used FC2 for a long time. Its yum package
management system is slow as hell, though. If you use FC, install apt
(that is, apt-rpm) and Synaptic on it.

SUSE has a great rep. I haven't used it, but it's obviously very
high-quality. Teutonic precision, you know :-)

Mandrake I have used. Version 10 is excellent, I can't think of
anything bad to say about it -- except that I never was able to set up
its apt equivalent, urpmi, to use the internet. Probably my own fault.
In any case, you can still easily get apt and Synaptic for it.

Overall, wrt package management, I recommend using the distro's
built-in management tool for installing from the CDs, and Synaptic for
downloading from the internet.

HTH,

-- 
Yawar
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
