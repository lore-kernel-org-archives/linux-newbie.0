From: "Ratnadeep Joshi" <ratn.josh@gmail.com>
Subject: Re: query related to different architectures
Date: Sun, 20 May 2007 17:20:59 +0530
Message-ID: <4bcb1f700705200450n261a7274ga709e97ae98d9bd6@mail.gmail.com>
References: <7783925d0703200528l70b534b6r69abfcba32f3a41a@mail.gmail.com>
	 <8bd0f97a0703200715k3179750dy744a237bba9773b7@mail.gmail.com>
Mime-Version: 1.0
Content-Type: multipart/alternative; 
	boundary="----=_Part_85462_15546650.1179661859124"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:references;
        b=JbYmtqKE6yAETrBweGxutdhDH/sPbma7E82NhcFab+ZBP84fz/yWAHqT31NPjiRhD2/EIbjgprTr0luDNcEU8WIEUh37RHi/a1o3ZwO1NgPGd7jgq9kqWLbeSCyj11S0My9/uHkQ8Yav1o2nHeWpfTk7Wv5yP1iGiyjydDrSS2w=
In-Reply-To: <8bd0f97a0703200715k3179750dy744a237bba9773b7@mail.gmail.com>
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
To: Mike Frysinger <vapier.adi@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

------=_Part_85462_15546650.1179661859124
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

>
> > Secondly, when we talk of 32/64 bit processor, we are talking about
> > the data bus width, right? The same holds when we talk about Operating
> > systems, right? So the size of address bus does not matter?
>
> it usually refers to the native size of the cpu ... 64bit processors
> work normally on registers that are 64bits in size while 32bit
> processors work normally on registers that are 32bits in size
> -mike



Yes, it is the data bus width. Size of the address bus does not matter. On
i386, they are same by design not by requirement. On x86_64, they are
different.

------=_Part_85462_15546650.1179661859124
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

<div><blockquote class="gmail_quote" style="border-left: 1px solid rgb(204, 204, 204); margin: 0pt 0pt 0pt 0.8ex; padding-left: 1ex;">&gt; Secondly, when we talk of 32/64 bit processor, we are talking about<br>&gt; the data bus width, right? The same holds when we talk about Operating
<br>&gt; systems, right? So the size of address bus does not matter?<br><br>it usually refers to the native size of the cpu ... 64bit processors<br>work normally on registers that are 64bits in size while 32bit<br>processors work normally on registers that are 32bits in size
<br>-mike</blockquote><div><br><br>Yes, it is the data bus width. Size of the address bus does not matter. On i386, they are same by design not by requirement. On x86_64, they are different.<br></div><br></div>

------=_Part_85462_15546650.1179661859124--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

