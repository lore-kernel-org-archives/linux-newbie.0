From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: 3Com NIC Driver?
Date: Sun, 13 Jun 2004 14:16:18 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200406131416.18554.pa3gcu@zeelandnet.nl>
References: <200405280756.57985.pa3gcu@zeelandnet.nl> <5.1.0.14.1.20040529115723.01fc3e68@celine> <20040530120407.GA477@lnx2.w8mch.ampr.org>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040530120407.GA477@lnx2.w8mch.ampr.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: haltec@kvinet.com, linux-newbie@vger.kernel.org

On Sunday 30 May 2004 14:04, Hal MacArgle wrote:
> Greetings again Ray: I did mention that we were 100% 10base2 here and
> had I had a crossover UTP cable to try, would have found the problem
> myself..
>
> Your experience let you say the magic phrase: Auto-media on 3Com
> cards don't always work - which was the case.. Default 10baseT, I had
> to re-flash it with the setup Dos program.. All's now well discovering
> that I had been lucky before with my SMC and RealTek NIC's all auto
> sensing without my intervention..

Auto-media is a thing which does not work well on any card in linux (IMHO) 
that is. I used to have such a problem with my SMC cards, i found that if 
there was no signal presant at inititaliation time then UTP would be used.
If the BNC connector is connected to another machine or hub and there is no 
traffic during the init,. process then UTP gets selected by Auto-media, 
however if i setup a ping on another machine and created traffic then 
10base-T would be selcted and the card worked properly.

I tryed the above with realtec 8019 cards as well and got the same results 
which is why i say Auto-media does not work well in linux, but having said 
that i have not tryed any of the cards under windows to see if the results 
are the same so really saying it does not work well in linux is not the right 
thing to say, possably the same problems will arise under windows as well, 
which is possably why all dual cards have dos/windows programs to change 
defaults in the cards chips.

It could also be that some Mobo's are slower in the detection process and dont 
return a value to modrobe quickly enough thus selecting UTP as default, but 
thats a wild guess.

There is another method of selcting 10base-T or UTP when inserting the cards 
module, some cards have module options to select the output, its been a long 
time since i used 10base-T and to be honest i have forgotten which cards have 
what options.
There is a command to show what options a module/driver has,

modinfo -p <module_name>


> APPRECIATE!! Happy Holiday...
>
> Hal

-- 
If the Linux community is a bunch of thieves because they
try to imitate windows programs, then the Windows community
is built on organized crime.

Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
