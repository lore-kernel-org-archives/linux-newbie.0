From: ichi@ihug.co.nz
Subject: Re: Trying to get GUI'ed
Date: Mon, 28 Oct 2002 09:32:15 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DBD041F.1E02F459@ihug.co.nz>
References: <5.1.0.14.1.20021024230507.0215c7e0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: Heimo Claasen <hammer@revobild.net>, linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> 
> In principle, you could run X with no Window Manager, 
> just starting a single xterm when the X server starts. 
> I've never done this myself (I have read about the 
> procedure, in a *very* old book), 

I ran X on an old 486 like this for several months.
To see how it works, edit ~/.xinitrc
------------------------------------------------------
xsetroot -solid grey
xcalc -geometry 200x300-0-0 -bg lightblue -font 9x15 &
xclock -geometry 240x240+0-0 -bg yellow &
xterm -font 9x15
------------------------------------------------------
Then execute 'startx'

> What I would suggest as a practical solution is for you 
> to run X with one of the lightweight Window Managers 
> ... say blackbox or icewm, 

I agree.  On my 486, I went from no-wm to icewm and there 
was no noticeable effect on the speed.  icewm adds a lot
of functionality without using a lot of resources.   

Cheers,
Steven

______________________________
http://www.volny.cz/basiclinux


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
