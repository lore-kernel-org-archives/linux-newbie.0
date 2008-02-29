From: "Jike Song" <albcamus@gmail.com>
Subject: Re: MIssed interrupts
Date: Fri, 29 Feb 2008 15:21:07 +0800
Message-ID: <df9815e70802282321l789d6c3bj967da63d3761183b@mail.gmail.com>
References: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
	 <f284c33d0802070750n1bc438c1y85c974bbf53a8242@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=vTCOr5Uv6pYYZhzD0ugmCc9SYumFjc+8eQgCZGZfz+M=;
        b=C8m5A5WEl5tx5R7gnAlCKsGZGu0c/3J2s8eBwdtjr3Y0yycroLQ9r2Ci0puJnQAhZVvmmdkyY7XFGgScSaIQVgNIu/7ue3yAkPt8HmnSt6k+aFrHexLf4R0W+1OaydyNEswhHJkUVhRwyoY81hl6n+JvNnIoUGSGrRiDp21njFk=
In-Reply-To: <f284c33d0802070750n1bc438c1y85c974bbf53a8242@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Mulyadi Santosa <mulyadi.santosa@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

On Thu, Feb 7, 2008 at 11:50 PM, Mulyadi Santosa
<mulyadi.santosa@gmail.com> wrote:
> Hi....
>
>  AFAIK at the time it's in disabled state...yes it will be missed. But
>  once you enabled it again.... missing interrupts will be received.

Do you mean that the PIC(Local APIC or something else) will retain the
disabled interrupt, and deliver it once again to the processor core as
soon as be re-enabled?

Regards,
Jike
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
