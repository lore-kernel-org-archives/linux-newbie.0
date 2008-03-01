From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: MIssed interrupts
Date: Sat, 1 Mar 2008 15:36:34 +0700
Message-ID: <f284c33d0803010036q4a8da223se1413d4f49ea3bfb@mail.gmail.com>
References: <7783925d0802062112r4637c674qf2d1dd356cc0923e@mail.gmail.com>
	 <f284c33d0802070750n1bc438c1y85c974bbf53a8242@mail.gmail.com>
	 <df9815e70802282321l789d6c3bj967da63d3761183b@mail.gmail.com>
	 <804dabb00802290634u3873bcb5m7be4a80856d76de7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=9a6EIjNm3KqxyZiayEfJgT2kJoMM1922LBofN4k4ZrI=;
        b=JYoT2TVe037IA8p5243UtxgLWfQP28lJPsqlDR/4PZPYkMQAWk3ozEtzqSC+Ult+rToLsfDw4YzEkv+r+Awh6XkF+eXtt05amnv0aiVDbBlESdTtwgyBDnTUeza4bgYMKWaoRe+XnUZCymt/CGnikMg7AZcte5BJcM9paj584wQ=
In-Reply-To: <804dabb00802290634u3873bcb5m7be4a80856d76de7@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: Jike Song <albcamus@gmail.com>, Rick Brown <rick.brown.3@gmail.com>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi...

On Fri, Feb 29, 2008 at 9:34 PM, Peter Teoh <htmldeveloper@gmail.com> wrote:
>  This is something new to me.   After some some search, Mulyadi is
>  right.  It is called "Interrupt Request Buffering".   And according to
>  Unabridged Pentium 4 (pg 1537) while processing one interrupt, it can
>  receive another interrupt, but the 3rd one that comes in will be
>  discarded, and it is all on the same interrupt vector.   Thanks for
>  the sharing everyone....

Well, I just recall the best I could from Understanding the Linux
kernel 3rd edition. If somebody can give further confirmation, that
would be great.

regards,

Mulyadi.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
