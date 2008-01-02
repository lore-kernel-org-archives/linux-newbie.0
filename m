From: "srinivas bakki" <srinivas.bakki@gmail.com>
Subject: Re: Things I can do before MMU is turned on
Date: Wed, 2 Jan 2008 18:22:43 +0530
Message-ID: <91219fd00801020452y5a6369d5n5e151f3be64d9f05@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B075CC22B@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_6064_26185304.1199278363751"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        bh=090Yerg0Xb2N/Y7ANztisprKFEXtErLnJjFdX82gBV0=;
        b=RtAZ8NB75OTJ6zN1A/nk1hx5+tNSDV63ofP3H2d92wJKEduoyDnc54SIgYMh0pV+ZvuD8YEBIJP7jckcMYpCDZOcT1fMerJhIp26QhTG4cwpwhRqt9eIXRNLXNtZ/SBhT95uVoaeFMpoC6gm28QcyomHVhxuO5pQgACBGjIfT8Q=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B075CC22B@GDCMX01.igglobal.com>
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
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

------=_Part_6064_26185304.1199278363751
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

>
> I'm working in an environment where the MMU has yet not been enabled (And
> hence on PC relative addressing can be used - no absolute addresses).


Does it necessarily mean that u need to access data or text with relative
addressing only ? I mean yes we have to address it relatively but its very
architecture specific.

 let us say in x86 segments are defined to span the entire addressable
memory then both the absolute and the relative become the same ... am i
right ?

However  what i fail understand is why the question is being asked in
context with the MMU being enabled or disabled !

Regards
Srinivas Bakki

------=_Part_6064_26185304.1199278363751
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div>
<blockquote class="gmail_quote" style="PADDING-LEFT: 1ex; MARGIN: 0px 0px 0px 0.8ex; BORDER-LEFT: #ccc 1px solid">I&#39;m working in an environment where the MMU has yet not been enabled (And hence on PC relative addressing can be used - no absolute addresses).
</blockquote>
<div>&nbsp;</div>
<div>Does it necessarily mean that u need to access data or text with relative addressing only ? I mean yes we have to address it relatively but its very architecture specific.</div>
<div>&nbsp;</div>
<div>&nbsp;let us say in x86 segments are defined to span the entire addressable memory then both the absolute and the relative become the same ... am i right ?</div>
<div>&nbsp;</div>
<div>However&nbsp; what i&nbsp;fail understand&nbsp;is why the question is being asked in context with the MMU being enabled or disabled !</div>
<div>&nbsp;</div>
<div>Regards</div>
<div>Srinivas Bakki</div>
<div>&nbsp;</div><br>&nbsp;</div>

------=_Part_6064_26185304.1199278363751--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

