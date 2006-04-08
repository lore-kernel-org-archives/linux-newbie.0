From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: SuSE 10.0 and it's RPM 4.1.1??
Date: Sat, 8 Apr 2006 13:36:50 -0400
Message-ID: <20060408173649.GA1258@lnx2.kvinet.com>
References: <20060405151039.GA1065@lnx2.kvinet.com> <200604060902.11198.sotl155360@earthlink.net> <20060407182326.GA1046@lnx2.kvinet.com> <4436D44F.8010700@comarre.com>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <4436D44F.8010700@comarre.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

On 04-07, Ray Olszewski wrote:
> Hal -- I was hoping you'd get feedback from some RPM user who could 
> answer your questions directly. As you may recall, I'm exclusively a 
> Debian user these days. But I think I may be able to help with some of 
> your confusion. And since I gather that Edgar's off-list reply didn't 
> cover everything you were looking for, I'll give it a try below.

	My original query has been answered by others are well as
this message.. Completely.. I have another one that deserves a
separate post but, meanwhile, will annotate this thread, clipping
much..




> >>>First off, I didn't know what V3 DSA meant, 
> 
> This is probably a digial signature of some sort,intended to prevent 
> package spoofing. About a year ago, Debian added digital authentication 
> to its package sites, and as a result, I routinely have to override it 
> when installing or upgrading packages from unofficial Debian archives. 
> Since you say you were trying to install a package that is not part of 
> the offifial distro you were working with, you most likely ran into 
> something similar that the RPMers are doing now.

	The "crackers" have ruined the INet as I used to know it..
Firewalls and filters really don't work, perfectly.. My 50-100
unwanted messages a day are more easily given the big "D" from Mutt,
IMHO... Safer?? My ISP runs Spam Assassin and I hate to think how
many it might be without it... <grin>




> >>Not sure on this but I believe that SuSE uses a different package system 
> >>which is not compatable with Red Hat's. 

	That seems to be the case unless for very simple code.. Which
and what dependencies seem to be the biggest problem..




> Quick history lesson: Pretty much all distros that are still around 
> derive from one of three origins:
> 
> 1. Slackware really has no modern descendents, but it is the oldest 
> branch that's still active. I believe it still uses .tgz packages 
> natively. In a sense, I suppose it (or its anscestors, SLS, Yggdrasil, 
> and perhaps others I've forgotten) spawned everything else, but Red Hat 
> and Debian diverged so fundamentally from Slackware et al. ... for 
> example, abandoning its BSD-style init structure for a SysV structure 
> .. that it's hard to see them as derived from Slackware, even beyond 
> the difference in package managers.

	I keep "coming back" to Slackware and it's a fact that
Patrick is conservative especially since he's battling a serious
illness.. His cause is much strengthened by the existence of
www.linuxpackages.net that contains many, many binary compiles of so
many programs for each Slackware version all in .tgz format... Maybe
when you're not "first" you try harder??




> That said, the fact that two distros use the same package manager does 
> NOT mean their packages are interchangeable. All distros have their own 
> quirks, in areas like distro-specific kernel patches, slight variation 
> in "what goes where" conventions (like /bin vs /usr/bin), customized 
> init scripts, vert distinctive installers, and probably more. Package 
> naming is not standardized either, so a package from one distro might 
> fail to find in a different distro a file it depends on because the 
> package name for the file is different.

	I now know what others have experienced..




> These days, all good distros cross support one another's package 
> managers, either directly or using a "translator" application like 
> alien. But resolving dependencies remains messy.

	For sure and "alien" is a new one on me to tuck into my grey
cells.. With programs running into millions of lines of code; I think
it works pretty well, bottom line..




> Editors come and go, and I've never found one I like as much as 
> VirtualDub, a freeware editor that is Windows only. There are several 
> around though ... the term you want to search on is "non-linear editor". 
> The Debian-Sid package archive currently lists a gstreamer plugin, kino, 
> and pitivi. There are probably others not in Debian.

	Since moving video is so complicated; trying each and every
one in turn has to be counter-productive.. I learn as I go... I
fetched Virtual Dub and the author very savvy but I don't want to run
any M$ stuff if I can help it..




> "Streaming" is a pretty open-ended term, so I'm not exactly sure what 
> you want to achieve (getting video streams from the Internet? attaching 
> a host to your TV set and having it play video stored on a server 
> elsewhere on your LAN? multicasting a video stream across your LAN so 
> several locations in your home show the same show? putting a DVD in one 
> host and having it play back on another? something else?). Be more 
> specific here and I'll be happy to give you whatever more advice I can 
> (I've been using my Linux server as a TiVo-like backend for several 
> years now, but I don't have any significant experience with files 
> downloaded from streaming sites on the Internet).

	My desires are relatively simple  these days: Fetch an
analogue, or view a "movie" from a VHS or DVD player; creat a file
that can be viewed again at a later date; convert this file to a
suite of files that can, in turn, burn a DVD playable on a standard
ubiquitous stand alone DVD player.. Plus, do some simple edits to the
files somewhere, that escapes me at present. I've been able to do
this with much help from you and Chuck so am, now, trying to increase
the quality of the end product, and, in the process, learn more about
digital video.. I need no INet exposure except for downloading
occasional files, especially since we're really rural telco lines so
slow speed thruput is a norm.. I do have a machine in town that can
connect to an ADSL line but for downloads only; bringing the files
home via sneaker net..




> Usually, if you need to install a package from the upstream provider, 
> rather than the distro itself, the provider will be fairly specific 
> about what distro/version a particular .rpm (or .deb) is designed to 
> work with. At least that's my experience with upstream .deb packages. 

	I've noticed this __trend__ these days but I can't get over
the fact that we used to suffer with dumb terminal/main frames and
celebrated when we were able to get our "work" into our own
building... Plus, IMHO, the longer we are connected the bigger the
cracker profile.. Just an opinion of course. <grin>




> If the upstream provider doesn't have a package that matches your 
> distro, you typically have to install from source or from a .tgz (and 
> fix any real dependency issues by hand). Again, not really a newbie task 
> (yeah, I know you are no more a newbie than I am, Hal, but this *is* a 
> beginners' list).

	Ray, I've noticed that what I know this week is less than
what I knew last week.. With computers anyway... <BG> Another,
separate subject, post follows; I hope I haven't outlived any
welcomes..

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
