From: Ray Olszewski <ray@comarre.com>
Subject: Re: further debian questions
Date: Tue, 24 Dec 2002 09:55:42 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021224092001.020bf620@celine>
References: <Pine.LNX.4.44.0212241039030.233-100000@vector>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.44.0212241039030.233-100000@vector>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

First the basic comment: apt-get (and its cousin, apt-cache) are just tools 
for managing the process of installing packages from source archives. You 
tell us that you used apt-get to install things, but you don't say where 
you installed them from (that is, what archives are listed in 
/etc/apt/sources.list). aptitude is just a standard Debian alternative to 
apt-get and apt-cache (it also uses /etc/apt/sources.list, for example), so 
switching between the two should not *itself* introduce any problems ... 
though I don't use aptitude myself. Unless, of course, Libranet has 
modified any of these apps to cause them to depart from standard Debian usage.

As a general matter, when used consistently on a single archive, apt-get is 
superb at handling dependency problems. I run Debian Unstable (Sid) mostly, 
plus a little Debian Stable (Woody) ... I NEVER have a problem with Woody, 
and only rarely with Sid (they call it Unstable for a reason, and 
occasionally a package gets updated before a dependency, but the mismatch 
normally is fixed quickly). In fact, in my experience, you never have to 
"get those dependencies
so's I can install my prog" ... apt-get automatically identifies 
dependencies and installs the needed packages to satisfy them.

As to your specific wine problems, I can't suggest anything concrete based 
on what you've posted, because I can't confirm what you say. For example, 
you write

>Well, for the first time in my breif apt-getting career, I got a message
>saying there were dependency problems, and a list of the missing
>dependencies. So, I says to myself: "heck, I better get those dependencies
>so's I can install my prog." So, I went first after one called "libarts."
>Big mistake.

I don't know why apt-get listed libarts as a dependency problem associated 
with wine, because my (Sid) archives does not include libarts among the 
packages wine depends on:
         autovcr@kuryakin:~$ apt-cache show wine
         Package: wine
         [...]
         Depends: debconf, libwine (= 0.0.20021125-1), xbase-clients (>= 
4.0) | xcontrib
         Suggests: wine-doc, winesetup, msttcorefonts, binfmt-support
         Conflicts: binfmt-support (<< 1.1.2)

You then write:

>  Installing libarts caused major portions of KDE to be
>deleted: apparently what happend is that I got libarts from stable Debian,
>which, as I understand it, is part of KDE and KDE in stable Debian is 2.x
>while I had KDE 3.x on my Libranet system.

This puzzles me, because apt-get and aptitude are supposed to use the same 
/etc/apt/sources.list to get their package lists; I don't understand what 
Libranet did to them to cause them to access different package archives. 
Nor do I quite understand what you mean by "deleted" ... dependency 
problems can cause package not to operate properly, but they don't 
typically depete files. (Unless you did a "dist-upgrade" in there somewhere 
... this option causes apt to be a bit more aggressive in trying to resolve 
particularly ugly dependency mismatches, and using it with a downgrade -- 
from unstable to stable -- might do anything.)

The main lesson is to stick to a single archive ... even mixing Woody and 
Sid packages is not for the inexperienced.

Final comment -- you write:

>I can see no reason why I should have dependecy problems on a freshly 
>installed
>system.

Actually, missing dependencies are commonplace on all full-size Linux 
systems, because, increasingly, packages use a wide mix of libraries, far 
too many possibilities to install them all in a base install. Also, some 
packages use libraries with licensing problems (e.g., some audio and video 
codecs), and you need to install them from "unofficial" archives, not the 
base Debian ones. Systems like apt do more than identify the missing 
dependencies; they automatically install them for you, for this very reason 
... so they do not become a "problem". (I'm not current on using rpm-based 
tools, but I've no doubt they handle missing dependencies in some manner 
analogous to apt-get's approach.)

It may be that Libranet has introduced some problems in spinning off from 
Debian Woody. Or you may have made some mistake that I'm not seeing from 
your description of what you did. Personally, I'd think your best bet was 
to move away from  "commercial Debian variants" completely and use Debian 
itself. Or, since you seem to be *paying* for Libranet, to get some serious 
technical support from them.

At 11:06 AM 12/24/02 -0600, James Miller wrote:
>Well, I decided on what appeared to be the most user-friendly of the
>commercial Debian variants to go on my machine - Libranet. So far, I'm not
>as happy with it as I was with Knoppix. For one thing, it seems that
>apt-getting is a restricted process under Libranet. They have an app
>called "Aptitude" that, I've discovered, one should by all means use for
>installing new packages. Here's the way I learned this: I noted that there
>were some dependency problems with WINE (more on that later), so I decided
>to apt-get it using Aptitude. I was not having much success, so I said to
>myself: "why I am I screwing around with this Aptitude prophylactic when I
>can just open a console and apt-get the thing?" So, that's what I did.
>Well, for the first time in my breif apt-getting career, I got a message
>saying there were dependency problems, and a list of the missing
>dependencies. So, I says to myself: "heck, I better get those dependencies
>so's I can install my prog." So, I went first after one called "libarts."
>Big mistake. Installing libarts caused major portions of KDE to be
>deleted: apparently what happend is that I got libarts from stable Debian,
>which, as I understand it, is part of KDE and KDE in stable Debian is 2.x
>while I had KDE 3.x on my Libranet system. To make a long story short, the
>most expedient way of restoring KDE proved to be reinstalling Libranet.
>So, I decided I may only apt-get at my own risk on this system, most of
>the time being constrained by Aptitude and its peculiarities.
>
>Here's another problem I've had. I tried to get Lyx using Aptitude, but
>have again encountered dependency problems. My question regarding this is
>whether dependency problems are endemic to apt-get as they are to the
>package installing methods of other well-known distros? I never ran into
>any dependency problems on the Knoppix test system I had when trying to
>apt-get. Was I simply lucky? Are the dependecy problems I'm having
>traceable to shortcomings in Aptitude, or are they part of life using
>apt-get from a console as well?
>
>Finally, does it seem to you, as it does to me, that my initial problems
>with WINE are a reflection of deficiencies in the distro I'm using? I can
>see no reason why I should have dependecy problems on a freshly installed
>system. I was never asked during the install process whether I wanted to
>leave out any libraries or anything. Rather, I selected pretty much the
>default install option, adding a couple of additional package groups from
>the list with which I was presented. That indicates to me that either they
>have poorly constructed this distribution, leaving out key elements of an
>important package, or else their Aptitude program is buggy and is wrongly
>reporting dependency problems. If either of these are true, I question
>whether I should go through with payment on this distro, since it seems
>still to be at the beta stage.
>
>Feedback from the more knowledgeable on this list will be appreciated.




--
-------------------------------------------"Never tell me the odds!"--------
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-------------------------------------------------------------------------------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
