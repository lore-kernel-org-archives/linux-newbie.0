From: Jeremy Andrews <jeremy@kerneltrap.org>
Subject: Re: register_exec_domain
Date: Fri, 26 Apr 2002 07:52:45 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020426075245.696d977d.jeremy@kerneltrap.org>
References: <20020422094901.57fc79e6.jeremy@kerneltrap.org>
	<m3adrsj8wp.fsf@wobble.eth.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <m3adrsj8wp.fsf@wobble.eth.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: drguruolai@eth.net

Yeah, thanks...  Turns out the problem was my gcc.  I reinstalled 2.95.2 and the
problem went away.

On 25 Apr 2002 17:18:54 +0530
G Anna <drguruolai@eth.net> wrote:

> 
> > Date: Mon, 22 Apr 2002 09:49:01 -0400
> > From: Jeremy Andrews <jeremy@kerneltrap.org>
> > Subj: register_exec_domain
> 
> (snip)
> 
> >   I've been unable to compile the kernel for a while now.  When I do
> > a 'make bzImage', it always bombs out in the file
> 
> (snip)
> 
> Did you do a 'make mrproper' before anything else?
> 
> anna
> 


--
 Jeremy Andrews    <mailto:jeremy@kerneltrap.org>
 PGP Key ID: 8F8B617A  http://www.kerneltrap.org/
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
