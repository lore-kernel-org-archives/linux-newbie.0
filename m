From: "Gaurav Bhatnagar" <bhatnagar.gaurav22@gmail.com>
Subject: Re: Why sleeping not allowed after preempt_disable()
Date: Tue, 15 May 2007 14:14:18 +0530
Message-ID: <e88b5df0705150144u234392f2n6b0ce29c91d24ac9@mail.gmail.com>
References: <9f1dc2cf0705150137y6516af57o922ff00a5f53433b@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_15883_31725166.1179218658479"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=Y1QGAAUDLmfnXqb5SaGhaPeUbwTuHQaIxsQVKhGn4K/A61738hNHE48rmeu/xesfiwgp2Di0F8WyBaHwaf8hOQBHQw3MBO3fC+uojee+bYG2u6MGqorWE8ThNw1K1UDEunAvGYBVAboAsjthRgfuIA+TEs9QfusNC10CZgPuxbc=
In-Reply-To: <9f1dc2cf0705150137y6516af57o922ff00a5f53433b@mail.gmail.com>
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
To: Learning Linux <learninglinux4@gmail.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

------=_Part_15883_31725166.1179218658479
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

if you set disable preemption ... kernel can't schedule another thread until
thread itself leave the cpu ... if this thread sleeps who will wake it up
??? this would lead to deadlock ..
gaurav


On 5/15/07, Learning Linux <learninglinux4@gmail.com> wrote:
>
> Hi,
>
> Apologies for posting another trivial query. After reading about ISRs
> and sleeping, I have cleared my doubts on why ISRs cannot sleep, but I
> still cannot understand why a normal kernel thread cannot sleep once
> it has disable preemption.
>
> Assuming that the kernel thread does NOT hold any locks, nor any
> per-cpu data, why stops it from sleeping after a call to
> preempt_disable()?
>
> TIA,
>
> LL
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>

------=_Part_15883_31725166.1179218658479
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div>if you set disable preemption ... kernel can&#39;t schedule another thread until thread itself leave the cpu ... if this thread sleeps who will wake it up ???&nbsp;this&nbsp;would lead to deadlock ..</div>
<div>gaurav&nbsp;&nbsp;<br><br>&nbsp;</div>
<div><span class="gmail_quote">On 5/15/07, <b class="gmail_sendername">Learning Linux</b> &lt;<a href="mailto:learninglinux4@gmail.com">learninglinux4@gmail.com</a>&gt; wrote:</span>
<blockquote class="gmail_quote" style="PADDING-LEFT: 1ex; MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">Hi,<br><br>Apologies for posting another trivial query. After reading about ISRs<br>and sleeping, I have cleared my doubts on why ISRs cannot sleep, but I
<br>still cannot understand why a normal kernel thread cannot sleep once<br>it has disable preemption.<br><br>Assuming that the kernel thread does NOT hold any locks, nor any<br>per-cpu data, why stops it from sleeping after a call to
<br>preempt_disable()?<br><br>TIA,<br><br>LL<br>-<br>To unsubscribe from this list: send the line &quot;unsubscribe linux-newbie&quot; in<br>the body of a message to <a href="mailto:majordomo@vger.kernel.org">majordomo@vger.kernel.org
</a><br>More majordomo info at&nbsp;&nbsp;<a href="http://vger.kernel.org/majordomo-info.html">http://vger.kernel.org/majordomo-info.html</a><br>Please read the FAQ at <a href="http://www.linux-learn.org/faqs">http://www.linux-learn.org/faqs
</a><br></blockquote></div><br>

------=_Part_15883_31725166.1179218658479--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

