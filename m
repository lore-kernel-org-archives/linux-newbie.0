From: "Axel H. Siebenwirth" <axel@hh59.org>
Subject: Re: Tcsh: Append output to a file
Date: Wed, 15 May 2002 03:17:04 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020515011704.GC1047@neon>
References: <2.2.32.20020515010844.00e0918c@[192.168.1.23]>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <2.2.32.20020515010844.00e0918c@[192.168.1.23]>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hi!

On Tue, 14 May 2002, Ray Olszewski wrote:

> At 03:01 AM 5/15/02 +0200, Axel H. Siebenwirth wrote:
> >Hello!
> >
> >For example I use "/usr/local/sbin/dsniff >& dsniff.log &" in a start-up
> >skript to log the output to a file. But everytime I start my computer a new
> >file "dsniff.log" is created.
> >
> >My question is: How do I append to an existing file?
> 
> /usr/local/sbin/dsniff >>& dsniff.log &
> 
> The double >> is the "append" instruction.

Okay. First off, thank you!
I confused myself. Shell chaos. I'm using tcsh as all my login shells. But
the startup scripts are all bash scripts. So I really asked my self why what
you told me works on command line but not from the script.

Can you please tell me how to the same thing for bash? :)

Thank you,
Axel Siebenwirth
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
