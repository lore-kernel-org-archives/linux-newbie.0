From: Amit Kumar <free.amit.kumar@gmail.com>
Subject: Re: Unable to understand a piece of code
Date: Mon, 20 May 2019 09:03:55 +0530
Message-ID: <CAPTh4Ou0SPi-x5G7ZK0XSsL9zVLwEcxpdo1WAXLKUT105rQ-AA@mail.gmail.com>
References: <CAPTh4Ouvn=SiGnUGV5B7Drmp2-tVCMV=Z46+t-XL5rqPcTpF-g@mail.gmail.com>
 <20190520012351.GA13083@eros.localdomain>
Mime-Version: 1.0
Content-Type: multipart/mixed; boundary="===============5677461040781174318=="
Return-path: <kernelnewbies-bounces@kernelnewbies.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=lnHNq417XoDwVFTub13xz6f4K7l0CFJFb80pENE8v6U=;
 b=htDs49OtTrbwwizhBPgzo4UQI23cQdZlQayzaoFMZjPQLdkNZHpSaKmCWqXa8KSyV5
 RRwXAMjHVn5dvIHyvSiyVtebTwBEMeGzZeG6X4NrEnnM7l+jW+5P8TzvJMkWmlGrFXF9
 wglV2rHu8593XxaZ/F2WD8NnX2f7CiLjNa0r7U2Q6JrP6qvASyXKPnSCguPSHwXPlG4F
 d0IworS6JTqnJYULKYkDXTc3W0kOx9zDB09/BlIgn3jlocTlW9X0O4LIsNxYZpBV/yv9
 +0bcht8XjHNxULBCfclLLHn+sZN+UdrPn+olWOHSpV5mCOaztv9DL/fBYQdWj4Vw1wpK
 gY5w==
In-Reply-To: <20190520012351.GA13083@eros.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <https://lists.kernelnewbies.org/mailman/options/kernelnewbies>, 
 <mailto:kernelnewbies-request@kernelnewbies.org?subject=unsubscribe>
List-Archive: <http://lists.kernelnewbies.org/pipermail/kernelnewbies/>
List-Post: <mailto:kernelnewbies@kernelnewbies.org>
List-Help: <mailto:kernelnewbies-request@kernelnewbies.org?subject=help>
List-Subscribe: <https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies>, 
 <mailto:kernelnewbies-request@kernelnewbies.org?subject=subscribe>
Errors-To: kernelnewbies-bounces@kernelnewbies.org
To: "Tobin C. Harding" <me@tobin.cc>
Cc: linux-newbie@vger.kernel.org, Kernel Newbies <kernelnewbies@kernelnewbies.org>

--===============5677461040781174318==
Content-Type: multipart/alternative; boundary="00000000000098d8690589496787"

--00000000000098d8690589496787
Content-Type: text/plain; charset="UTF-8"

On Mon, 20 May 2019, 6:54 am Tobin C. Harding, <me@tobin.cc> wrote:

> On Mon, May 20, 2019 at 05:37:41AM +0530, Amit Kumar wrote:
> > HI,
> >
> > mm/slub.c: line 3973
> > int __kmem_cache_shrink(struct kmem_cache *s)
> > {
> > int node;
> > int i;
> > struct kmem_cache_node *n;
> > struct page *page;
> > struct page *t;
> > struct list_head discard;
> > struct list_head promote[SHRINK_PROMOTE_MAX];
> > unsigned long flags;
> > int ret = 0;
> >
> > flush_all(s);
> > for_each_kmem_cache_node(s, node, n) {
> >
> > How uninitialized variable node is being used in macro
> for_each_kmem_cache_node?
> >
> > node is a local variable with no extern and not initialized.
> >
> > mm/slab.h: line 490
> > #define for_each_kmem_cache_node(__s, __node, __n) \
> > for (__node = 0; __node < nr_node_ids; __node++) \
>
> This _is_ the initialization of node.

First thank you for your reply.
I just did not use my brain that node is initialized using __node inside
for loop.
I know well macros are literally replaced and do not exist anymore after
preprocessing.

Macros are kinda funky, there
> isn't much more to say about that other than perhaps read up some more
> about how macros work in C and read a bunch more macros in the kernel
> e.g. include/linux/list.h
>
> Good luck,
> Tobin.
>

--00000000000098d8690589496787
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><div dir=3D"ltr" =
class=3D"gmail_attr">On Mon, 20 May 2019, 6:54 am Tobin C. Harding, &lt;me@=
tobin.cc&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On Mon, May 20,=
 2019 at 05:37:41AM +0530, Amit Kumar wrote:<br>
&gt; HI,<br>
&gt; <br>
&gt; mm/slub.c: line 3973<br>
&gt; int __kmem_cache_shrink(struct kmem_cache *s)<br>
&gt; {<br>
&gt; int node;<br>
&gt; int i;<br>
&gt; struct kmem_cache_node *n;<br>
&gt; struct page *page;<br>
&gt; struct page *t;<br>
&gt; struct list_head discard;<br>
&gt; struct list_head promote[SHRINK_PROMOTE_MAX];<br>
&gt; unsigned long flags;<br>
&gt; int ret =3D 0;<br>
&gt; <br>
&gt; flush_all(s);<br>
&gt; for_each_kmem_cache_node(s, node, n) {<br>
&gt; <br>
&gt; How uninitialized variable node is being used in macro for_each_kmem_c=
ache_node?<br>
&gt;<br>
&gt; node is a local variable with no extern and not initialized.<br>
&gt; <br>
&gt; mm/slab.h: line 490<br>
&gt; #define for_each_kmem_cache_node(__s, __node, __n) \<br>
&gt; for (__node =3D 0; __node &lt; nr_node_ids; __node++) \<br>
<br>
This _is_ the initialization of node.=C2=A0 </blockquote></div></div><div d=
ir=3D"auto">First thank you for your reply.</div><div dir=3D"auto">I just d=
id not use my brain that node is initialized using __node inside for loop.<=
/div><div dir=3D"auto">I know well macros are literally replaced and do not=
 exist anymore after preprocessing.</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto"><div class=3D"gmail_quote"><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Macro=
s are kinda funky, there<br>
isn&#39;t much more to say about that other than perhaps read up some more<=
br>
about how macros work in C and read a bunch more macros in the kernel<br>
e.g. include/linux/list.h<br>
<br>
Good luck,<br>
Tobin.<br>
</blockquote></div></div></div>

--00000000000098d8690589496787--


--===============5677461040781174318==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
Kernelnewbies mailing list
Kernelnewbies@kernelnewbies.org
https://lists.kernelnewbies.org/mailman/listinfo/kernelnewbies

--===============5677461040781174318==--

