From: <deepesh@india.tejasnetworks.com>
Subject: Re: Confirmation for subscribe linux-newbie (fwd)
Date: Tue, 20 May 2003 11:18:18 +0530 (IST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0305201116570.7186-100000@deepesh.india.tejasnetworks.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>




Hi,


there is a strange problem that i am facing. when i am connecting the diag
port of my card to the minicom ttyS0 of my host machine, and the terminal
settings are ANSI, i do not have any problem. But when the terminal
settings are VT102, I get strange characters on the screen. That is the
reason I wanted to know the difference between the two.


i think that the card is some how sending some control charaters which
affects the terminal settings in VT102, but the ANSI doesn't support those
extra features because of which there is no problem.


please give me some information how the control charater related stuff
works on terminals. this might help me solve my problem.


deepesh








On Mon, 19 May 2003, Stephen Samuel wrote:

> deepesh@india.tejasnetworks.com wrote:
> > 
> > 
> > Hi,
> >  
> >   Please let me know the basic differences between the VT102 and the ANSI
> > terminals.
> > 


> ANSI was based on the VT100 (predecessor to the VT102).  The VT102 has
> a couple of extensions not in ANSI. Nothing really show-stopper for
> most people. ANSI is, however, something of a least-common denominator.
> Just about anything that supports vt102 (or vt200) protocols should also
> work if you say that it's ansi.
> 
> 

-- 

D.Deepesh


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
