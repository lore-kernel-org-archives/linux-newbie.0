From: Kurt Sys <kurt.sys@rug.ac.be>
Subject: Re: unmet dependencies
Date: Fri, 11 Apr 2003 09:52:26 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <16022.29754.130108.193173@ksys.rug.ac.be>
References: <5.1.0.14.1.20030410074839.01ea3048@celine>
	<16021.9949.471022.230213@ksys.rug.ac.be>
	<5.1.0.14.1.20030410090850.01ea3240@celine>
Reply-To: Kurt Sys <kurt.sys@rug.ac.be>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030410090850.01ea3240@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

Hello,

First, sorry about my terminology... 

I haven't got the problems anymore (due to some 'playing' with
sources.list):

Originally, I mixed stable and sarge and had dependency problems;
I changed to stable and problems were solved (after updating,
'upgrading' etc);
I changed again and mixed stable and sid and I had no problems;
I changed again to sarge and I have no problems.

The reason why I didn't list my sources.list, is because I changed it
a lot. Now, it looks like this:

----
#deb http://security.debian.org/ stable/updates main
deb http://security.debian.org/ testing/updates main

#deb http://ftp.kulnet.kuleuven.ac.be/debian/ stable main non-free
#contrib deb-src http://ftp.kulnet.kuleuven.ac.be/debian/ stable main non-free contrib
deb http://ftp.kulnet.kuleuven.ac.be/debian testing main non-free contrib
deb-src http://ftp.kulnet.kuleuven.ac.be/debian testing main non-free contrib
#deb http://ftp.kulnet.kuleuven.ac.be/debian unstable main non-free contrib
#deb-src http://ftp.kulnet.kuleuven.ac.be/debian unstable main non-free contrib

deb http://non-us.debian.org/debian-non-US testing/non-US main contrib non-free
deb-src http://non-us.debian.org/debian-non-US testing/non-US main contrib non-free

deb http://smarden.org/pape/Debian sarge unofficial pape
deb-src http://smarden.org/pape/Debian sarge unofficial pape
----

and everything works.


Oh, just one thing, but I don't know if it's very important, there
is one package kept back:

----
# apt-get upgrade
Reading Package Lists... Done
Building Dependency Tree... Done
The following packages have been kept back
  libgd1 
0 packages upgraded, 0 newly installed, 0 to remove and 1  not upgraded.
# 
---- 

I actually don't bother, since everything works fine and I have also
libgd2-noxpm (don't ask me why this is without xpm and version was
installed with xpm), so I guess it doesn't matter a lot.



I really appreciate these replies,

Kurt.


--
Mail from Ray Olszewski
sent on Thursday April 10 2003 at 09:18 (GMT-0700):

> First, your terminology is off. At this time ...
> 
>          Woody = Stable 
>          Sarge = Testing
>          Sid = Unstable
> 
>  From what you wrote, I *still* cannot tell which of these you are
> running.  So I'll suggest explicitly what I hinted at before: let us
> see the contents of /etc/apt/sources.list .
> 
> Mixing versions is always tough. Personally, I never do it. I also
> don't run Sarge (only Woody on my servers and Sid on my development
> systems) so can't easily check dependency details there.
> 
> One thought ... if you moved from Woody (Stable) to Sarge (Testing),
> did you do an apt-get dist-upgrade as part of the process? If not, a
> lot of stuff will have been "held back" at Woody level, and that
> might cause the dependency problems you're seeing.
> 
> It's hard to tell from what you posted, since you didn't include the
> "held back" list that apt-get normally displays. But you might check
> to see if, for example, libmysqlclient6 is being held back, which
> would (probably) create a conflict that would block installation of
> libmysqlclient10.
> 
> BTW, it is unlikely (though not impossible) that a package you need
> is *only* in Stable ... unless you are running packages that are not
> part of Debian at all (in which case, who knows what they might need
> in the way of old libraries).
> 
> At 05:51 PM 4/10/2003 +0200, Kurt Sys wrote:
> >Hello,
> >
> >I try to gather as much information as possible and I read/hear
> >much slightly different things, so I try to extract something that
> >looks ok with me. And now I remember... Quite a lot of people
> >(using Debian) state that the 'unstable' version (sarge) is
> >actually still quite stable. 'testing' (sid) is more stable and
> >yeah... 'stable' (woody) is really stable. In many cases, they add
> >that they run testing, since it is quite stable already. So I
> >decided to do things somewhat more secure and put 'testing' in my
> >sources.list, and not 'unstable' (and I've been told that it's also
> >not good to mix sid and sarge).
> >
> >So, mixing unstable and stable would probably give less problems?
> >Or am i wrong (again :-) )? It's just, I can imagine that some
> >packages I need are only in stable, but that there are more recent
> >versions of other packages, and sometimes I like the more recent
> >onces...
> [old stuff deleted]
> 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
