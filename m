From: Ray Olszewski <ray@comarre.com>
Subject: Re: unmet dependencies
Date: Thu, 10 Apr 2003 09:18:50 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20030410090850.01ea3240@celine>
References: <5.1.0.14.1.20030410074839.01ea3048@celine>
 <16021.9949.471022.230213@ksys.rug.ac.be>
 <5.1.0.14.1.20030410074839.01ea3048@celine>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <16021.37642.759002.142665@ksys.rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Kurt Sys <kurt.sys@rug.ac.be>, Linux Newbie <linux-newbie@vger.kernel.org>

First, your terminology is off. At this time ...

         Woody   = Stable
         Sarge   = Testing
         Sid     = Unstable

 From what you wrote, I *still* cannot tell which of these you are running. 
So I'll suggest explicitly what I hinted at before: let us see the contents 
of /etc/apt/sources.list .

Mixing versions is always tough. Personally, I never do it. I also don't 
run Sarge (only Woody on my servers and Sid on my development systems) so 
can't easily check dependency details there.

One thought ... if you moved from Woody (Stable) to Sarge (Testing), did 
you do an apt-get dist-upgrade as part of the process? If not, a lot of 
stuff will have been "held back" at Woody level, and that might cause the 
dependency problems you're seeing.

It's hard to tell from what you posted, since you didn't include the "held 
back" list that apt-get normally displays. But you might check to see if, 
for example, libmysqlclient6 is being held back, which would (probably) 
create a conflict that would block installation of libmysqlclient10.

BTW, it is unlikely (though not impossible) that a package you need is 
*only* in Stable ... unless you are running packages that are not part of 
Debian at all (in which case, who knows what they might need in the way of 
old libraries).

At 05:51 PM 4/10/2003 +0200, Kurt Sys wrote:
>Hello,
>
>I try to gather as much information as possible and I read/hear much
>slightly different things, so I try to extract something that looks ok
>with me. And now I remember... Quite a lot of people (using Debian)
>state that the 'unstable' version (sarge) is actually still quite
>stable. 'testing' (sid) is more stable and yeah... 'stable' (woody) is
>really stable. In many cases, they add that they run testing, since it
>is quite stable already. So I decided to do things somewhat more
>secure and put 'testing' in my sources.list, and not 'unstable' (and
>I've been told that it's also not good to mix sid and sarge).
>
>So, mixing unstable and stable would probably give less problems? Or
>am i wrong (again :-) )? It's just, I can imagine that some packages I
>need are only in stable, but that there are more recent versions of
>other packages, and sometimes I like the more recent onces...
[old stuff deleted]

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
