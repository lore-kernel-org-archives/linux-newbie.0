From: "Mulyadi Santosa" <mulyadi.santosa@gmail.com>
Subject: Re: Copy-on-Write
Date: Thu, 7 Feb 2008 22:30:48 +0700
Message-ID: <f284c33d0802070730s7dcc2735o77fe1d655e4220cc@mail.gmail.com>
References: <7783925d0802052149g125a6497rabf866130edbaf78@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=YejU74EPdI2xZfCBTWXUthyGLQNldC3ce4Cy2UnTDHY=;
        b=JTofulqw+esoPAYst/fOyY892QXS9KQCZZiyCOOK8V+LfBdGlGyY1aXV6LRBCeNt/zTCbB4MnL5j9SoUA6NtFnDXBfpzx4C2U25zNhkR2fVOUEBH8AmKwZ0U/y/LoowmbvHXvZgNI2IPMe4qmsLuPVpt5Soaar0sv3LlthiaslQ=
In-Reply-To: <7783925d0802052149g125a6497rabf866130edbaf78@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi....

On Feb 6, 2008 12:49 PM, Rick Brown <rick.brown.3@gmail.com> wrote:
> So in linux, is a child run first or the parent? Can we rely on this
> information?

Hm, this might be the answer:
http://lxr.linux.no/linux/kernel/sched.c#L1663

it says:
unsigned int __read_mostly sysctl_sched_child_runs_first = 1;

and I guess it has relationship with certain /proc or /sys entry.

regards,

Mulyadi.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
