From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: TLB Question
Date: Tue, 5 Feb 2008 18:45:42 +0700
Message-ID: <f284c33d0802050345n2d9e764cs339da8b1362dbafb@mail.gmail.com>
References: <7783925d0802042204n20bb1acch4aa1d422dd44d9e8@mail.gmail.com>
	 <d94614c90802042308r6c918cf1id2e815ad2105c807@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=ydD2ZmqxYtNee1eAOSp92//3bB+mpDiZ8UdKkyFQcf4=;
        b=nw7lyxnLWPBi130QZ8B2AMYWP8gNQsABDqxEmvmQSo2BArWPvoC1WXZndNH9XCNPji0x3XoyF8LcK2dCw+fAogTxjKer4N/vZJPSQ4jI5wCPAbvDLMm/RjnIf4FQtGeYaZlOZYeHo6OyO8ewGwMD8TZ0KTRWH3yuLGCtD8j7bb0=
In-Reply-To: <d94614c90802042308r6c918cf1id2e815ad2105c807@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: sahlot arvind <asahlot@gmail.com>
Cc: Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi...

On 2/5/08, sahlot arvind <asahlot@gmail.com> wrote:

> TLB entries are filled by H/W and not explicitly by kernel. Whenever MMU
> translates VA to PA it caches that translation into TLB. If TLB is full then
> MMU uses its own algorithms to replace some entry in TLB e.g. MMU might
> consider TLB as circular buffer and replace first entry once TLB is full.

AFAIK, by using certain instructions...you can manually insert
entry/entries to TLB. Same thing to deleting TLB entries. This kind of
technique is used for example on security related software such as
PaX/grsecurity

regards,

Mulyadi.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
