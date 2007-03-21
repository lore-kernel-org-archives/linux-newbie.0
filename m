From: "Mansha Linux" <mansha.linux@gmail.com>
Subject: Re: kernel preemption
Date: Wed, 21 Mar 2007 10:53:42 +0530
Message-ID: <fd40b9090703202223p6d0b8018k2a97b2f5483c6c0c@mail.gmail.com>
References: <7783925d0703202117tbbe231cp3bf44fcbc0726291@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_172419_23919146.1174454622061"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=CP8m6byQYG5pPuACRxyowcRP/FRCYYz48V3Ui1FODWSNIf55MgJ6RBNJd7IWOHn6IFwWF510J7qxUblqPjpe6D0EFk0p4uJx37azYG7i0eZyCUZ4z0wi6Mv4QqvK95e5xKQIxb13KaN257wGsRauEKSkSoEZtuvGTDTAQK36IFM=
In-Reply-To: <7783925d0703202117tbbe231cp3bf44fcbc0726291@mail.gmail.com>
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

------=_Part_172419_23919146.1174454622061
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On 3/21/07, Rick Brown <rick.brown.3@gmail.com> wrote:
>
> Hi list,
>
> When we preempt_enable() / preempt_disable(), is the kernel preemption
> enabled or disabled for ALL the processors or just the local
> processor?
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
no,  the kernel preemption enabled or disabled for just the local processor
only......CMIIW


-- 
regards,
Mansha

------=_Part_172419_23919146.1174454622061
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<br><br>
<div><span class="gmail_quote">On 3/21/07, <b class="gmail_sendername">Rick Brown</b> &lt;<a href="mailto:rick.brown.3@gmail.com">rick.brown.3@gmail.com</a>&gt; wrote:</span>
<blockquote class="gmail_quote" style="PADDING-LEFT: 1ex; MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">Hi list,<br><br>When we preempt_enable() / preempt_disable(), is the kernel preemption<br>enabled or disabled for ALL the processors or just the local
<br>processor?<br><br>TIA,<br><br>Rick<br><br>--<br>To unsubscribe from this list: send an email with<br>&quot;unsubscribe kernelnewbies&quot; to <a href="mailto:ecartis@nl.linux.org">ecartis@nl.linux.org</a><br>Please read the FAQ at 
<a href="http://kernelnewbies.org/FAQ">http://kernelnewbies.org/FAQ</a><br><br></blockquote></div><br>no,&nbsp; the kernel preemption enabled or disabled for just the local processor only......CMIIW<br><br clear="all"><br>-- <br>
regards,<br>Mansha 

------=_Part_172419_23919146.1174454622061--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

