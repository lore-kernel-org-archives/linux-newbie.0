From: Karthik Vishwanath <Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG>
Subject: Re: cannot find -lncurses? [Solved]
Date: Tue, 21 Sep 2004 20:03:10 -0400 (EDT)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.44.0409211958060.15588-100000@legolas.personal.engin.umich.edu>
References: <4150B9A0.1090101@laposte.net>
Reply-To: Karthik <karthikv@Alum.Dartmouth.ORG>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4150B9A0.1090101@laposte.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: simon <simon.guinot@laposte.net>
Cc: linux-newbie@vger.kernel.org

On Wed, 22 Sep 2004, at 1:30am, simon wrote:

> hello
> 
> Karthik Vishwanath wrote:
> > -----------------
> > 
> > Now, I tried to apt-get install all the ncurses packages that matched
> > `apt-cache search ncurses | grep ncurses` and found that ncurses-base,
> > ncurses-bin, ncurses-term, libncurses5, libncurses5-dev, libncurses5-dbg
> > were all installed. I ran /sbin/ldconfig and tried again, with the same 
> > results. 
> > 
> > Was not quite sure what to try next. Please help! 
> 
> are you sure having install libncurses5-dev ?
> 


That was exactly it! I had just figured it out - and was planning on 
writing here. I had *ASSumed* that I did have libncurses5-dev, did not 
check. Sorry for the post, and thanks for the help! 

-K

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
