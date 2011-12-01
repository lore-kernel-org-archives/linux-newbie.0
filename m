From: ratheesh kannoth <ratheesh.ksz@gmail.com>
Subject: Re: Any utility to capture a Konsole session.
Date: Thu, 1 Dec 2011 14:24:38 +0530
Message-ID: <CAGZFCEGnUV9N3OMb+nobKS_RsDLyhTA=0X3ByYL6qC+FScWiFA@mail.gmail.com>
References: <CAGZFCEGfmcDRyPwW4swPNLa1VPNDO=vD9UDF_k8WuM+wmYsKYA@mail.gmail.com>
	<CAPhiTEF4-vkewHgUTyC4oOA6_fKZofR_xVW00Ud5YywzsdKJ=Q@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=rvpsI29qsrpVI6wBIxZk11cZpHdKdKd7/7/KMLzgjFI=;
        b=Lrw3gb31c2M/hBcyzr6nZ04WDR9Qxdby0Fpsa28p3Qqr5FrLFKHe4Rc2VYvpk446nx
         wjnMVC0K0lWy+Jto9e6tmYvtFJcFvzatY63xUR+XgKbp55ZqpwT9PhqD3+MoAW26Ojwe
         vXkHinhsSj4xk9jZa+vyqV7PiTWwY5+2btoQA=
In-Reply-To: <CAPhiTEF4-vkewHgUTyC4oOA6_fKZofR_xVW00Ud5YywzsdKJ=Q@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: Frederick Kautz <fkautz@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

I want all commands and its ourput to log like below


fox@xcr-lnx1:~/workout/test2 ] $ ls
cat  rat
[fox@xcr-lnx1:~/workout/test2 ] $ ps
  PID TTY          TIME CMD
11119 pts/37   00:00:00 csh
11132 pts/37   00:00:00 bash
11146 pts/37   00:00:00 ps
[fox@xcr-lnx1:~/workout/test2 ] $

On Thu, Dec 1, 2011 at 2:19 PM, Frederick Kautz <fkautz@gmail.com> wrot=
e:
> Can you be more specific about what you are trying to do?
>
> For starting, a common technique is to use
>
> $ tail -f /var/log/[logname]
>
> to watch a specific log in a terminal. You can also specify multiple =
log
> files to follow.
>
> On Dec 1, 2011 12:32 AM, "ratheesh kannoth" <ratheesh.ksz@gmail.com> =
wrote:
>>
>> I am using Kde =A0User interface in fedora.
>>
>> i =A0would like to log all the =A0logs on a konsole. I could not fin=
d any
>> logging fecility in =A0konsole. Is there any utility ?
>>
>>
>> -Ratheesh
>> --
>> To unsubscribe from this list: send the line "unsubscribe linux-newb=
ie" in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at =A0http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
