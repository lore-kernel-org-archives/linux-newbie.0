From: Hal MacArgle <haltec@kvinet.com>
Subject: Re: SuSE 10.0 and it's RPM 4.1.1??
Date: Fri, 7 Apr 2006 14:56:16 -0400
Message-ID: <20060407185616.GA1071@lnx2.kvinet.com>
References: <20060405151039.GA1065@lnx2.kvinet.com> <200604062314.25999.edgaralwers@gmx.de>
Reply-To: haltec@kvinet.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200604062314.25999.edgaralwers@gmx.de>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "Dr. Edgar Alwers" <edgaralwers@gmx.de>
Cc: linux-newbie@vger.kernel.org

On 04-06, Dr. Edgar Alwers wrote:
> On Wednesday 05 April 2006 17:10, Hal MacArgle wrote:
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
> Up to now I thought I would  understand english fairly good. Withouth being 
> nasty, I did not understand at all the subject.

	Greetings and I apologize profusely for the American slang..
Maybe it's my way to prove I'm not getting senile.. When my
grandchildren and great-grandchildren talk to me I don't understand
90% of what they say.. <grin> Some fault me for no details that I
tried to circumvent this time.. I failed.. My relatives in the UK and
Scotland say that Americans haven't spoken Englisch for years...

	The query has been answered, mostly, in that it seems that
the .rpm files of different distributions are not, in all cases,
exactly the same, or, at least, not all will run cross distributions. 




> Is it too much to ask for a short description of the problem
> instead of so much literature?

	Maybe I should have had separate queries?? I still can't find
what V3 DSA signature means, except that it has something to do with
security.. Why I got that report is unknown especially since this
machine is not and never will be connected to a LAN or WAN..
Basically; I was completely confused as to why I could not install a
.rpm file, unmarked as to distribution, into SuSE.. That seems to be
answered..




> what is a piece of cake, what ball playing package did you install,
> what box of queries did you open and so on ?

	American slang again; very sorry... I'll try to be better in
the future.. Can I use "cool" when talking about Linux?? <grin>

	BTW; I hope it didn't come across that I was complaining about
SuSE and/or RPM, both superb.. It's just that Open Source has made
many things more complicated inasmuch as we are all different in the
way we think and act..




> Never mind, Edgar
> 
> -- 
> ---------------------
> Dr.-Ing. Edgar Alwers
> Weinheim

	You are from DE land so I must mention that five of my
neighbours emigrated from there many years ago.. Our little
"community" is called Birchesgarten.. I'll have to admit that we
don't "understand" each other all of the time... <grin>

	Very best regards,

-- 

    Hal - in Terra Alta, WV/US - Slackware GNU/Linux 10.1   (2.4.29)
.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
