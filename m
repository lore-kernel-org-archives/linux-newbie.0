From: Jim Reimer - WA5RRH <wa5rrh@arrl.net>
Subject: Re: trouble setting shell variable
Date: Sun, 26 May 2002 11:44:34 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200205261644.g4QGi19N020836@franklin.icok.net>
References: <200205261406.g4QE6b9N012213@franklin.icok.net> <200205262128.03049.mssnlayam@cs.annauniv.edu>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200205262128.03049.mssnlayam@cs.annauniv.edu>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: mssnlayam@cs.annauniv.edu
Cc: linux-newbie@vger.kernel.org

forgot about formatting....  that makes it a LOT easier.

thanks.

On Sunday 26 May 2002 10:58 am, Suriya Narayanan M S wrote:
> On Sunday 26 May 2002 7:37 pm, Jim Reimer - WA5RRH wrote:
>   > echo `date` | cut -b 25-28,12-13,15-16,18-19
>   >
>   > gives me what I want to use for the file name, but I
>   > can't figure out how to get it into a variable for use
>   > later in the script when I rename the file.  I've tried
>   >
>   > variablename=
>
> $ variablename=`echo \`date\` | cut -b 25-28,12-13,15-16,18-19`
> $ vim ${variablename}
>
> or
>
> $ variablename=`date | cut -b 25-28,12-13,15-16,18-19`
> $ vim ${variablename}
>
> To make life simple use the formatting available with date.
> eg.
> $ variablename=`date +%d-%b-%Y`
> $ echo ${variablename}
> 26-May-2002
>
> Hope that answers your question.
> Bye,
> Suriya Narayanan M S
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
