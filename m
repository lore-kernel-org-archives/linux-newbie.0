From: "sahlot arvind" <asahlot@gmail.com>
Subject: Re: TLB Question
Date: Tue, 5 Feb 2008 12:38:02 +0530
Message-ID: <d94614c90802042308r6c918cf1id2e815ad2105c807@mail.gmail.com>
References: <7783925d0802042204n20bb1acch4aa1d422dd44d9e8@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_8672_29209428.1202195282105"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        bh=TLtdlggWN6+9hTnXxhRTDESISuT5Ip3BFHHQgblhTuc=;
        b=mail14fDKmafjri89YVdcSkQ821CCK1EhcBUqdoPsnZMXs/w7O805VFJrU/XkPoQnxiWxwndjFy+YbRBokbR+vtugXaqQQ0RXNabeCQA4k0c2a66rhTsZlU7xSY0BDKu1uK+LkbtZMOWZDJGpTlEsjryTyeK1EWpOrFkujhBQo4=
In-Reply-To: <7783925d0802042204n20bb1acch4aa1d422dd44d9e8@mail.gmail.com>
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
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

------=_Part_8672_29209428.1202195282105
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

> E.g. who fills, flushes & refills the TLB entries?
TLB entries are filled by H/W and not explicitly by kernel. Whenever MMU
translates VA to PA it caches that translation into TLB. If TLB is full then
MMU uses its own algorithms to replace some entry in TLB e.g. MMU might
consider TLB as circular buffer and replace first entry once TLB is full.

>What all initializations need to be performed by kernel (And where is
>the code?)
Kernel bascially has to set up the page tables and set the Page Table Base
register and enbale MMU.

Regards
- A.

On 2/5/08, Rick Brown <rick.brown.3@gmail.com> wrote:
>
> Hi,
>
> I'm trying to understand the MMU operations & am wondering where is
> the kernel code where the kernel interfaces with the this piece of
> hardware?
>
> Can some one help me in understanding that what all are the
> responsibilities of the kernel, and what is it the hardware takes care
> of automatically? E.g. who fills, flushes & refills the TLB entries?
> What all initializations need to be performed by kernel (And where is
> the code?)
>
> TIA,
>
> Rick
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>

------=_Part_8672_29209428.1202195282105
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div>&gt;&nbsp;E.g. who fills, flushes &amp; refills the TLB entries?</div>
<div>TLB entries are filled by H/W and not explicitly by kernel. Whenever MMU translates VA to PA it caches that translation into TLB. If TLB is full then MMU uses its own algorithms to replace some entry in TLB e.g. MMU might consider TLB as circular buffer and replace first entry once TLB is full.</div>

<div><br>&gt;What all initializations need to be performed by kernel (And where is<br>&gt;the code?)</div>
<div>Kernel bascially has to set up the page tables and set the Page Table Base register and enbale MMU.</div>
<div>&nbsp;</div>
<div>Regards</div>
<div>- A.<br>&nbsp;</div>
<div><span class="gmail_quote">On 2/5/08, <b class="gmail_sendername">Rick Brown</b> &lt;<a href="mailto:rick.brown.3@gmail.com">rick.brown.3@gmail.com</a>&gt; wrote:</span>
<blockquote class="gmail_quote" style="PADDING-LEFT: 1ex; MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">Hi,<br><br>I&#39;m trying to understand the MMU operations &amp; am wondering where is<br>the kernel code where the kernel interfaces with the this piece of<br>
hardware?<br><br>Can some one help me in understanding that what all are the<br>responsibilities of the kernel, and what is it the hardware takes care<br>of automatically? E.g. who fills, flushes &amp; refills the TLB entries?<br>
What all initializations need to be performed by kernel (And where is<br>the code?)<br><br>TIA,<br><br>Rick<br><br>--<br>To unsubscribe from this list: send an email with<br>&quot;unsubscribe kernelnewbies&quot; to <a href="mailto:ecartis@nl.linux.org">ecartis@nl.linux.org</a><br>
Please read the FAQ at <a href="http://kernelnewbies.org/FAQ">http://kernelnewbies.org/FAQ</a><br><br></blockquote></div><br>

------=_Part_8672_29209428.1202195282105--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

