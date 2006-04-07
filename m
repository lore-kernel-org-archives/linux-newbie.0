From: Ray Olszewski <ray@comarre.com>
Subject: Re: SuSE 10.0 and it's RPM 4.1.1??
Date: Fri, 07 Apr 2006 14:06:23 -0700
Message-ID: <4436D44F.8010700@comarre.com>
References: <20060405151039.GA1065@lnx2.kvinet.com> <200604060902.11198.sotl155360@earthlink.net> <20060407182326.GA1046@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060407182326.GA1046@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hal -- I was hoping you'd get feedback from some RPM user who could 
answer your questions directly. As you may recall, I'm exclusively a 
Debian user these days. But I think I may be able to help with some of 
your confusion. And since I gather that Edgar's off-list reply didn't 
cover everything you were looking for, I'll give it a try below.

Hal MacArgle wrote:
> On 04-06, SOTL wrote:
> 
>>On Wednesday 05 April 2006 11:10 am, Hal MacArgle wrote:
>>
>>>Greetings: A Slackware junkie all my Linux life, I'm just now
>>>"playing" with other distributions that use RPM..
>>>
>>>At first I thought, piece of cake, invoking rpm -i package.rpm;
>>>slick..
>>>
>>>That didn't last, when I tried installing a package that didn't play
>>>ball, and opened Pandora's box of queries.. Man rpm shed some light,
>>>what I understood, so I pulled a book I had covering Red Hat 6.2 -
>>>rather old, but just maybe??
>>>
>>>rpm -i package.rpm - returns "warning: package.rpm: V3 DSA signature:
>>>NOKEY, key ID [octet of characters]
>>>error: Failed dependencies: (with a list of no less than 15 of them
>>>reporting the exact library needed...)
>>>
>>>First off, I didn't know what V3 DSA meant, 

This is probably a digial signature of some sort,intended to prevent 
package spoofing. About a year ago, Debian added digital authentication 
to its package sites, and as a result, I routinely have to override it 
when installing or upgrading packages from unofficial Debian archives. 
Since you say you were trying to install a package that is not part of 
the offifial distro you were working with, you most likely ran into 
something similar that the RPMers are doing now.

but the missing
>>>dependencies are fairly normal these days.. I had some work ahead of
>>>me but the RedHat book said to use rpm -q --redhatprovides
>>><library.so.X> and it would list the base package needed.. This is
>>>not RedHat, of course, but there is a --provides flag that didn't
>>>return anything except that the package was missing.. I tried that
>>>entering a library that's either in /lib or /usr/lib, and it returned
>>>"Package not installed." I'm presuming this has been changed for, at
>>>least, libraries.. Or--is it the NOKEY thingy?? Stumped!!
>>>
>>>BTW the subject package was fetched from rpm.pbone.net, whereas the
>>>rpm's installed previous to that were ones in the SuSE distribution
>>>package.. That has to have a lot to do with it, IMHO... <grin>
>>>
>>>Is there a tutorial that explains this better than the man?? TIA.
>>
>>If I recall correctly RPM stands for Red Hat Package Manager which I believe 
>>is uses by Fedora/Redhat and FreeMandriva/Mandriva/Mandrake.
> 
> 	True AFAIK; plus others including Slackware that has the rpm
> program but warns us that it doesn't work with all apps... Open
> Source keeps us on our toes, eh?? Could it be with SuSe that it means
> something like Reliable Package Manager, instead of RedHat Package
> Manager?? Stranger things have happened.. The study of acronyms is
> another PhD dissertation..
> 
>>Not sure on this but I believe that SuSE uses a different package system which 
>>is not compatable with Red Hat's. 
> 
> 	This is what I really needed to know.. "RPM" is not,
> necessarily, "RPM"... Open Source again??
>  
>>I am sure that Debian uses a different system which is also used by Ubuntu and 
>>Kubuntu.
> 
> 	Yes; ".deb" and it too probably works with other
> distributions unknown by me.. It's getting much more complicated than
> when I first found Linux after years of Unix... 

Quick history lesson: Pretty much all distros that are still around 
derive from one of three origins:

1. Slackware really has no modern descendents, but it is the oldest 
branch that's still active. I believe it still uses .tgz packages 
natively. In a sense, I suppose it (or its anscestors, SLS, Yggdrasil, 
and perhaps others I've forgotten) spawned everything else, but Red Hat 
and Debian diverged so fundamentally from Slackware et al. ... for 
example, abandoning its BSD-style init structure for a SysV structure 
... that it's hard to see them as derived from Slackware, even beyond 
the difference in package managers.

2. Red Hat spawned SuSE, Mandrake, Connectiva, and a ton of others, 
identifiable by their use of the RPM package manager (which still stands 
for RedHar Package Manager, as far as I know)/

3. Debian spawned Knoppix, Ubuntu, DSL, and a bunch of others, 
identifiable by their use of the .deb packaging format and one or 
another of the Debian package management systems (dpkg, apt, and the like).

That said, the fact that two distros use the same package manager does 
NOT mean their packages are interchangeable. All distros have their own 
quirks, in areas like distro-specific kernel patches, slight variation 
in "what goes where" conventions (like /bin vs /usr/bin), customized 
init scripts, vert distinctive installers, and probably more. Package 
naming is not standardized either, so a package from one distro might 
fail to find in a different distro a file it depends on because the 
package name for the file is different.

Cross installing, even between two distros that use the same 
package-management system, is generally considered an expert task. In 
Debian, even installing across flavors (e.g., trying to install a 
package from Unstable on a Stable or Testing system) is tricky.

These days, all good distros cross support one another's package 
managers, either directly or using a "translator" application like 
alien. But resolving dependencies remains messy.

>>If what you are doing is what I infer from your title that you are trying to 
>>install RPM into a SuSE system then I do not believe even if there were no 
>>issues with the package manager that it would work as Red Hat and SuSE do 
>>things internally sufficiently different that the only package that I am 
>>aware of that will run equally on both system is OpenOffice.org's Office 
>>package which basically puts all libraries and all components into a separate 
>>root directory with no integration. Since this is not the Linux/Unix way but 
>>is the MS way which OO is emulating I do not believe that you will find any 
>>other package that will install and run in a equivalent way.Thus I believe 
>>that it may be best to find the correct SuSE package for installation. From 
>>past experience not with SuSE but other distributions if you do not you are 
>>simply asking for problems.
> 
> 
> 	More or less, simply, I've been looking for a distribution
> that supports streaming video including editing, etc, not that I want
> the M$ route either.. It's obviously extremely complicated 

Yeah, no kidding.

Pretty much any major distro will support video capture from a TV-tuner 
card, probably with a version of mplayer/mencoder (though patent, DRM, 
and/or licensing messiness may keep the relevant packages outside the 
official distribution, as happens with Debian). If you want this sort of 
capture with a pretty interface, look at MythTV, which is (to my eye) 
best suited to the short-term time-shifting uses that TiVos are also 
best at ... though some use it to do capture for long-term storage.

Editors come and go, and I've never found one I like as much as 
VirtualDub, a freeware editor that is Windows only. There are several 
around though ... the term you want to search on is "non-linear editor". 
The Debian-Sid package archive currently lists a gstreamer plugin, kino, 
and pitivi. There are probably others not in Debian.

"Streaming" is a pretty open-ended term, so I'm not exactly sure what 
you want to achieve (getting video streams from the Internet? attaching 
a host to your TV set and having it play video stored on a server 
elsewhere on your LAN? multicasting a video stream across your LAN so 
several locations in your home show the same show? putting a DVD in one 
host and having it play back on another? something else?). Be more 
specific here and I'll be happy to give you whatever more advice I can 
(I've been using my Linux server as a TiVo-like backend for several 
years now, but I don't have any significant experience with files 
downloaded from streaming sites on the Internet).

> so I'm
> going to build on what I have already using Slackware 10.2, kernel
> 2.4.31... Skirting around to other distributions to make it "simple"
> just hasn't happened.. My mind was definately made up when I tried
> yet another .rpm package that needed  25 extra dependencies, most of
> which I already had in either /lib or /usr/lib and I have no idea why
> the package didn't find them... It's moot now... <grin>

As I said above, the problem with dependencies is probably variation in 
package names.

Usually, if you need to install a package from the upstream provider, 
rather than the distro itself, the provider will be fairly specific 
about what distro/version a particular .rpm (or .deb) is designed to 
work with. At least that's my experience with upstream .deb packages. 
Color inside the lines and its a piece of cake; ignore posted 
limitations at your own risk.

If the upstream provider doesn't have a package that matches your 
distro, you typically have to install from source or from a .tgz (and 
fix any real dependency issues by hand). Again, not really a newbie task 
(yeah, I know you are no more a newbie than I am, Hal, but this *is* a 
beginners' list).

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
