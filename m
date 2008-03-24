From: "Manish Katiyar" <mkatiyar@gmail.com>
Subject: Re: Detect Stack Overflows?
Date: Mon, 24 Mar 2008 15:22:55 +0530
Message-ID: <ea11fea30803240252m3eaeeb80yc2791fa609aed276@mail.gmail.com>
References: <C86899CCB10A6C4E93D5978DCB232D4B07FA7A22@GDCMX01.igglobal.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=WCdAfldY/UTYiAPxIqFEK08grud0P3xW6HqHBHQJWy0=;
        b=Cb2A8bpRFL/SFp7uByS6/J6LnQlrCyNqFBvTCRVZc61PAN0B2op7PqUSevfnpMSnajgj+r6rsSTYkZn7fjnCskJrDIiF980g0Lkm14JmebjdcnogFaPig2WBdqmQkFw+SXXIz03H32jhmB9GJ15BYxY2A2g6S6pGJOOpw0M/vuA=
In-Reply-To: <C86899CCB10A6C4E93D5978DCB232D4B07FA7A22@GDCMX01.igglobal.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rajat Jain <Rajat.Jain@infogain.com>
Cc: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org

On Mon, Mar 24, 2008 at 2:34 PM, Rajat Jain <Rajat.Jain@infogain.com> wrote:
>
>  Hi,
>
>  Is there a way to detect stack overflows in the kernel?

Kernel configuration has an option to "check for stack overflows"
under kernel hacking section. Is that what you are looking for ?
grep your .config for DEBUG_STACKOVERFLOW

Hope that helps.....

>
>  I mean, apart from "You should use it sparingly" suggestions :-).
>
>  Thanks,
>
>  Rajat
>
>
>  --
>  To unsubscribe from this list: send an email with
>  "unsubscribe kernelnewbies" to ecartis@nl.linux.org
>  Please read the FAQ at http://kernelnewbies.org/FAQ
>
>



-- 
Thanks & Regards,
********************************************
Manish Katiyar ( http://mkatiyar.googlepages.com )
3rd Floor, Fair Winds Block
EGL Software Park
Off Intermediate Ring Road
Bangalore 560071, India
***********************************************
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
