From: Agri <agri@desnol.ru>
Subject: Re: howto configuring kernel and modules.conf for automatic loading
 of ide-scsi
Date: Sun, 25 Jan 2004 21:10:55 +0300
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040125211055.10e7943a.agri@desnol.ru>
References: <5.1.0.14.1.20040124202304.01f31308@celine>
	<20040125041110.22704715.agri@desnol.ru>
	<5.1.0.14.1.20040124202304.01f31308@celine>
	<5.1.0.14.1.20040125082404.01f99be0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040125082404.01f99be0@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

anyway thanks for answer... it's good answer i think :-)
i just knew it before...

here... i want to mention one strange thing...
if i "touch" for hd? device "hided" by ide-scsi kmod will request for a module and
system will load ide-scsi... curious... don't you think?

Agri

On Sun, 25 Jan 2004 08:28:31 -0800
Ray Olszewski <ray@comarre.com> wrote:

> At 02:06 PM 1/25/2004 +0300, Agri wrote:
> >thanks for answers, but....
> >the only thing i get: there is no way to configure loading of ide-scsi "ON 
> >DEMAND".
> >Am i right?
> [old stuff deleted]
> 
> I alswys hate to say that a statement like yours is correct ... there are 
> so many different ways of doing things on Linux/Unix systems, it may be 
> merely that I do not know the one that will solve your problem ... but I do 
> believe that there is no way to use "on demand" loading in this case ... 
> or, in fact, any case that involves access to filesystems. The only way for 
> you to be certain of that, though, it to wait and see whether someone else, 
> someone who knows a different bag of tricks from mine, suggests a method 
> that works for you.
> 
> I am also sorry if my prior response was so poorly phrased that that is the 
> "only thing [you] get" from it. I was attempting to be more helpful than that.
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
