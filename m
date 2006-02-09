From: "hackmiester (Hunter Fuller)" <hackmiester@hackmiester.com>
Subject: Re: Linux on dual processor query
Date: Wed, 08 Feb 2006 19:43:57 -0600
Message-ID: <43EA9E5D.1010303@hackmiester.com>
References: <Pine.LNX.4.64.0602081935170.5615@localhost.localdomain>
Reply-To: hackmiester@hackmiester.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0602081935170.5615@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: James Miller <jamtat@mailsnare.net>, linux-newbie@vger.kernel.org

I believe I have a machine like yours - two chips, HP, PII era... I 
installed fedora 4 on it and yes my kernel does have 'smp' in it. It's 
pretty fast for a PII 400mHz so I suppose it is distributing to both 
procs. However, some programs do have to be compiled like that, like my 
eggdrop and IRCd.

-- 
--hackmiester
Walk a mile in my shoes and you will be a mile away in a new pair of shoes.



James Miller wrote:

> I've recently run across an older server for cheap and am thinking 
> about acquiring it for cruel experimentation purposes (and if it 
> works, maybe even doing something useful with it). It's a dual 
> processor machine--HP, I think. P2 era. I'm wondering what's involved 
> in setting up and running Linux on one of these beasties. First, I 
> assume one must run a special kernel to take advantage of both 
> processors, right? If so, SMP kernel? Second, does the kernel handle 
> everything involved with distributing to the processors, or must one 
> use specially-compiled programs on such a system as well? Feedback on 
> this will be appreciated: still not sure if I want to tackle such a 
> project.
>
> Thanks, James
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
