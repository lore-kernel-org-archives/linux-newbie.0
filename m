From: =?utf-8?B?TcOhdMOp?= Eckl <ecklm94@gmail.com>
Subject: Re: Unable to understand a piece of code
Date: Wed, 22 May 2019 19:57:59 +0200
Message-ID: <20190522175759.4ganjslc6mooxrcp@sch.bme.hu>
References: <CAPTh4Ouvn=SiGnUGV5B7Drmp2-tVCMV=Z46+t-XL5rqPcTpF-g@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=OIrysn8O3ZqrYkn8QYPZDUVn4Vmrv/I7PtWOVj8c9EI=;
 b=nsUCv4yFLrEgb4PX/+wu+13Cdw22B2CpX4Am0xN5xkSpzRkvk/KRuAb+EMdFAlhC+Z
 VtqSK7phsPP7gMdTy55HIWr5kH96QXqwWvJDZl+d3pU5FMhoWyanOg+YRPPXyaijFGw7
 injXzAFq2N5dPCF0/CtMU8cDZA83PThBb06xqhdyp/rJ6SU3hy711Zfv4vmTK1SwVnuy
 LRQAdhzGY0ZGmy+k7JLdGqygB7suLOV/C/+vgH0tQj1spwIfkQM9Q37Y+rAIGKXnl7YP
 VAQAdRH+ZlwYwvwgle/DA+hc8Gw+ljZmtF7Vr6Dnk0aW1j1GbamD2SBTNf4EIV0AU2tE
 CpSg==
Content-Disposition: inline
In-Reply-To: <CAPTh4Ouvn=SiGnUGV5B7Drmp2-tVCMV=Z46+t-XL5rqPcTpF-g@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <https://lists.kernelnewbies.org/mailman/options/kernelnewbies>, 
 <mailto:kernelnewbies-request@kernelnewbies.org?subject=unsubscribe>
List-Archive: <http://lists.kernelnewbies.org/pipermail/kernelnewbies/>
List-Post: <mailto:kernelnewbies@kernelnewbies.org>
List-Help: <mailto:kernelnewbies-request@kernelnewbies.org?subject=help>
List-Subscribe: <https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>, 
 <mailto:kernelnewbies-request@kernelnewbies.org?subject=subscribe>
Errors-To: kernelnewbies-bounces@kernelnewbies.org
To: Amit Kumar <free.amit.kumar@gmail.com>
Cc: linux-newbie@vger.kernel.org, Kernel Newbies <kernelnewbies@kernelnewbies.org>

On Mon, May 20, 2019 at 05:37:41AM +0530, Amit Kumar wrote:
> HI,
> =

> mm/slub.c: line 3973
> int __kmem_cache_shrink(struct kmem_cache *s)
> {
> int node;
> int i;
> struct kmem_cache_node *n;
> struct page *page;
> struct page *t;
> struct list_head discard;
> struct list_head promote[SHRINK_PROMOTE_MAX];
> unsigned long flags;
> int ret =3D 0;
> =

> flush_all(s);
> for_each_kmem_cache_node(s, node, n) {
> =

> How uninitialized variable node is being used in macro for_each_kmem_cach=
e_node?
> =

> node is a local variable with no extern and not initialized.
> =

> mm/slab.h: line 490
> #define for_each_kmem_cache_node(__s, __node, __n) \
> for (__node =3D 0; __node < nr_node_ids; __node++) \
> if ((__n =3D get_node(__s, __node)))
> =

> As we see for loop is based on node.

Hi,

This sentence is almost correct. The for loop is *not based* on node but *u=
ses*
the node variable. If you check, __node gets initialised to 0 at the beginn=
ing of
the for loop. So whatever you use that macro with will be initialised to 0 =
at
the beginning of the for loop.

Bests,
M=E1t=E9

> =

> Thanks in advance.
> =

> Regards,
> Amit Kumar
