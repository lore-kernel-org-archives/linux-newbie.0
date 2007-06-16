From: "tejas khatiwala" <socretez@gmail.com>
Subject: Re: Accessing static variable from outside
Date: Sat, 16 Jun 2007 11:36:43 -0500
Message-ID: <6d778f200706160936w3120edacuc7d0ac21a9b06144@mail.gmail.com>
References: <b115cb5f0706151908o6a0f765etd5f275be8bf75f0@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_57925_1776847.1182011803952"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=FRior7ZNFBvgPbdc0Y5rPOxzijTCdXJrtNlRU5rpnfi9c+ZhYHeIA2ppTmCMfw1F9Syv4M2uI9EHjQLdxXjYTGUfM/UDtRKn8R6w2iP3TUN30DHxhNOEPEjAdWRgbxi23zYcPIWuRK3pVNe+n3eQcBLsga6m28wGMDYERk9o0xI=
In-Reply-To: <b115cb5f0706151908o6a0f765etd5f275be8bf75f0@mail.gmail.com>
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
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: Linux Newbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

------=_Part_57925_1776847.1182011803952
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

AFAIK one way to be able to access a static variable is using dynamic
linking lodader. u can read man pages of dlopen() and family. and here is
example of its usage http://www.slimy.com/~jleonard/src/dlopen.html

/tejas

On 6/15/07, Rajat Jain <rajat.noida.india@gmail.com> wrote:
>
> Hi,
>
> I understand that this is off-topic, but still if some one has any ideas
> ...
>
> I have a global variable that is defined static in an object file (say
> 1.o). Now I want to be able to get the value of this variable in
> ANOTHER object file (say 2.o) without changing the source of 1.c.
>
> Any ideas, anyone? I know that as per C, this is not possible. But may
> be some clever hack?
>
> Thanks,
>
> Rajat
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>

------=_Part_57925_1776847.1182011803952
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

AFAIK one way to be able to access a static variable is using dynamic linking lodader. u can read man pages of dlopen() and family. and here is example of its usage <a href="http://www.slimy.com/~jleonard/src/dlopen.html">
http://www.slimy.com/~jleonard/src/dlopen.html</a><br><br>/tejas<br><br><div><span class="gmail_quote">On 6/15/07, <b class="gmail_sendername">Rajat Jain</b> &lt;<a href="mailto:rajat.noida.india@gmail.com">rajat.noida.india@gmail.com
</a>&gt; wrote:</span><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">Hi,<br><br>I understand that this is off-topic, but still if some one has any ideas ...
<br><br>I have a global variable that is defined static in an object file (say<br>1.o). Now I want to be able to get the value of this variable in<br>ANOTHER object file (say 2.o) without changing the source of 1.c.<br><br>
Any ideas, anyone? I know that as per C, this is not possible. But may<br>be some clever hack?<br><br>Thanks,<br><br>Rajat<br><br>--<br>To unsubscribe from this list: send an email with<br>&quot;unsubscribe kernelnewbies&quot; to 
<a href="mailto:ecartis@nl.linux.org">ecartis@nl.linux.org</a><br>Please read the FAQ at <a href="http://kernelnewbies.org/FAQ">http://kernelnewbies.org/FAQ</a><br><br></blockquote></div><br>

------=_Part_57925_1776847.1182011803952--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

