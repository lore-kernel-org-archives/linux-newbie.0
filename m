From: "sahlot arvind" <asahlot@gmail.com>
Subject: Re: TLB Question
Date: Tue, 5 Feb 2008 17:59:31 +0530
Message-ID: <d94614c90802050429j4e97c833q704a352d8a1ece1f@mail.gmail.com>
References: <7783925d0802042204n20bb1acch4aa1d422dd44d9e8@mail.gmail.com>
	 <d94614c90802042308r6c918cf1id2e815ad2105c807@mail.gmail.com>
	 <f284c33d0802050345n2d9e764cs339da8b1362dbafb@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_9339_15740412.1202214571894"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        bh=cWQYWMIZ0i7JRiZxUSv4wYjlVwOpTpM2vmZxS7ozLXg=;
        b=WD4aBKdz9n4YRrAxpoqAcRuLOSDFz8uhxlD/kXb9mowm2+tOfVA5g0MV6oRUAw0ENOeXaQcxdQm6zdt+gCiJPLmJ9chaQkMO59kgL8ynPwR1/FCw9bPPSXoFLKrBOXMY/HpZYf8nZvdI2kItdBCiZ0LOFwSovcRhyK/M3xMU53o=
In-Reply-To: <f284c33d0802050345n2d9e764cs339da8b1362dbafb@mail.gmail.com>
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
To: Mulyadi Santosa <mulyadi.santosa@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

------=_Part_9339_15740412.1202214571894
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

>AFAIK, by using certain instructions...you can manually insert
>entry/entries to TLB. Same thing to deleting TLB entries.

Yes you can insert/delete entries in TLB manually. Though I am not sure but
AFAIK, linux kernel does do this.
Please correct if I am wrong.

Regards


On 2/5/08, Mulyadi Santosa <mulyadi.santosa@gmail.com> wrote:
>
> Hi...
>
> On 2/5/08, sahlot arvind <asahlot@gmail.com> wrote:
>
> > TLB entries are filled by H/W and not explicitly by kernel. Whenever MMU
> > translates VA to PA it caches that translation into TLB. If TLB is full
> then
> > MMU uses its own algorithms to replace some entry in TLB e.g. MMU might
> > consider TLB as circular buffer and replace first entry once TLB is
> full.
>
> AFAIK, by using certain instructions...you can manually insert
> entry/entries to TLB. Same thing to deleting TLB entries. This kind of
> technique is used for example on security related software such as
> PaX/grsecurity
>
> regards,
>
> Mulyadi.
>

------=_Part_9339_15740412.1202214571894
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div>&gt;AFAIK, by using certain instructions...you can manually insert<br>&gt;entry/entries to TLB. Same thing to deleting TLB entries.</div>
<div>&nbsp;</div>
<div>Yes you can insert/delete entries in TLB manually. Though I am not sure but AFAIK, linux kernel does do this.</div>
<div>Please correct if I am wrong.</div>
<div>&nbsp;</div>
<div>Regards<br><br>&nbsp;</div>
<div><span class="gmail_quote">On 2/5/08, <b class="gmail_sendername">Mulyadi Santosa</b> &lt;<a href="mailto:mulyadi.santosa@gmail.com">mulyadi.santosa@gmail.com</a>&gt; wrote:</span>
<blockquote class="gmail_quote" style="PADDING-LEFT: 1ex; MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">Hi...<br><br>On 2/5/08, sahlot arvind &lt;<a href="mailto:asahlot@gmail.com">asahlot@gmail.com</a>&gt; wrote:<br>
<br>&gt; TLB entries are filled by H/W and not explicitly by kernel. Whenever MMU<br>&gt; translates VA to PA it caches that translation into TLB. If TLB is full then<br>&gt; MMU uses its own algorithms to replace some entry in TLB e.g. MMU might<br>
&gt; consider TLB as circular buffer and replace first entry once TLB is full.<br><br>AFAIK, by using certain instructions...you can manually insert<br>entry/entries to TLB. Same thing to deleting TLB entries. This kind of<br>
technique is used for example on security related software such as<br>PaX/grsecurity<br><br>regards,<br><br>Mulyadi.<br></blockquote></div><br>

------=_Part_9339_15740412.1202214571894--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

