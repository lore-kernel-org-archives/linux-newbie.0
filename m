From: "Sachin Gaikwad" <sachin.kernel@gmail.com>
Subject: Re: Location of syscall wrappers
Date: Thu, 7 Feb 2008 01:48:44 -0500
Message-ID: <f5524d840802062248v2311b6at1dc22bc30ece3b60@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B07A30807@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=RHKigHFG5FJS16WVA4yd500ldtFPehwZ4uzeosJ9Qx0=;
        b=GRlCvp+/rtZGaZ24YcTDC+DgIM57V13CgToYjzKH9FAJop/IprdJmrWKbHFeNDFeDK8M997kFmCjnoPqQjoabspHxfLnPjq+lPvsqSIZPxRJpF0ZKQ8qC5/pqtOeMURj1avTL10pbE+CFuQ6zQ/FXdgxXTnz9LRwei3CC6Ukrlg=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B07A30807@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On Feb 7, 2008 1:35 AM, Rajat Jain <Rajat.Jain@infogain.com> wrote:
>
> Hi,
>
> If I remember correctly, there used to be syscall wrappers (_syscall3() etc) in the kernel that could be used to make system calls
> without any library support. I'm not able to locate them for i386. Where are they?

Use syscall(SYSTEM_CALL_NUMBER, arg1, arg2, arg3);

_syscall3() macro are are not supported nowadays.

http://lkml.org/lkml/2007/7/5/314

Sachin

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
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
