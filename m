From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: MIssed interrupts
Date: Fri, 29 Feb 2008 18:43:50 +0700
Message-ID: <f284c33d0802290343g74e8045en5ec86bc92a407b80@mail.gmail.com>
References: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
	 <f284c33d0802070750n1bc438c1y85c974bbf53a8242@mail.gmail.com>
	 <df9815e70802282321l789d6c3bj967da63d3761183b@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=HO0z+hzuP1PLAvQfWO3ldImcwSAJ0mvL9nqe1ZaU//w=;
        b=w3TTl5/rJujkTEbnnCzcMFGFOnRHcKDQE3ug26+cDW3cOqeW8oBVtY/mBEkAAxY2wB2YunWsrzgVhSGQPFa5XrUAk3i+F09Q7utagJkN4/pix/cX+LaZFcUKNka8TXe8PBBcOsT1qUYeil93UO9FXGtSOtHXvGDwmPrO+nZs2xs=
In-Reply-To: <df9815e70802282321l789d6c3bj967da63d3761183b@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Jike Song <albcamus@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi...

On Fri, Feb 29, 2008 at 2:21 PM, Jike Song <albcamus@gmail.com> wrote:
>  Do you mean that the PIC(Local APIC or something else) will retain the
>  disabled interrupt, and deliver it once again to the processor core as
>  soon as be re-enabled?

As far as I know, yes

regards,

Mulyadi.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
