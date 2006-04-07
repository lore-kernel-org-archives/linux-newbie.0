From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: SuSE 10.0 and it's RPM 4.1.1??
Date: Fri, 7 Apr 2006 14:23:26 -0400
Message-ID: <20060407182326.GA1046@lnx2.kvinet.com>
References: <20060405151039.GA1065@lnx2.kvinet.com> <200604060902.11198.sotl155360@earthlink.net>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200604060902.11198.sotl155360@earthlink.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: SOTL <sotl155360@earthlink.net>
Cc: linux-newbie@vger.kernel.org

On 04-06, SOTL wrote:
> On Wednesday 05 April 2006 11:10 am, Hal MacArgle wrote:
> > Greetings: A Slackware junkie all my Linux life, I'm just now
> > "playing" with other distributions that use RPM..
> >
> > At first I thought, piece of cake, invoking rpm -i package.rpm;
> > slick..
> >
> > That didn't last, when I tried installing a package that didn't play
> > ball, and opened Pandora's box of queries.. Man rpm shed some light,
> > what I understood, so I pulled a book I had covering Red Hat 6.2 -
> > rather old, but just maybe??
> >
> > rpm -i package.rpm - returns "warning: package.rpm: V3 DSA signature:
> > NOKEY, key ID [octet of characters]
> > error: Failed dependencies: (with a list of no less than 15 of them
> > reporting the exact library needed...)
> >
> > First off, I didn't know what V3 DSA meant, but the missing
> > dependencies are fairly normal these days.. I had some work ahead of
> > me but the RedHat book said to use rpm -q --redhatprovides
> > <library.so.X> and it would list the base package needed.. This is
> > not RedHat, of course, but there is a --provides flag that didn't
> > return anything except that the package was missing.. I tried that
> > entering a library that's either in /lib or /usr/lib, and it returned
> > "Package not installed." I'm presuming this has been changed for, at
> > least, libraries.. Or--is it the NOKEY thingy?? Stumped!!
> >
> > BTW the subject package was fetched from rpm.pbone.net, whereas the
> > rpm's installed previous to that were ones in the SuSE distribution
> > package.. That has to have a lot to do with it, IMHO... <grin>
> >
> > Is there a tutorial that explains this better than the man?? TIA.
> 
> If I recall correctly RPM stands for Red Hat Package Manager which I believe 
> is uses by Fedora/Redhat and FreeMandriva/Mandriva/Mandrake.

	True AFAIK; plus others including Slackware that has the rpm
program but warns us that it doesn't work with all apps... Open
Source keeps us on our toes, eh?? Could it be with SuSe that it means
something like Reliable Package Manager, instead of RedHat Package
Manager?? Stranger things have happened.. The study of acronyms is
another PhD dissertation..




> Not sure on this but I believe that SuSE uses a different package system which 
> is not compatable with Red Hat's.

	This is what I really needed to know.. "RPM" is not,
necessarily, "RPM"... Open Source again??




> I am sure that Debian uses a different system which is also used by Ubuntu and 
> Kubuntu.

	Yes; ".deb" and it too probably works with other
distributions unknown by me.. It's getting much more complicated than
when I first found Linux after years of Unix... 




> If what you are doing is what I infer from your title that you are trying to 
> install RPM into a SuSE system then I do not believe even if there were no 
> issues with the package manager that it would work as Red Hat and SuSE do 
> things internally sufficiently different that the only package that I am 
> aware of that will run equally on both system is OpenOffice.org's Office 
> package which basically puts all libraries and all components into a separate 
> root directory with no integration. Since this is not the Linux/Unix way but 
> is the MS way which OO is emulating I do not believe that you will find any 
> other package that will install and run in a equivalent way.Thus I believe 
> that it may be best to find the correct SuSE package for installation. From 
> past experience not with SuSE but other distributions if you do not you are 
> simply asking for problems.

	More or less, simply, I've been looking for a distribution
that supports streaming video including editing, etc, not that I want
the M$ route either.. It's obviously extremely complicated so I'm
going to build on what I have already using Slackware 10.2, kernel
2.4.31... Skirting around to other distributions to make it "simple"
just hasn't happened.. My mind was definately made up when I tried
yet another .rpm package that needed  25 extra dependencies, most of
which I already had in either /lib or /usr/lib and I have no idea why
the package didn't find them... It's moot now... <grin>

	Appreciate your comments; you did confirm one big suspicion..


    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
