From: Kristof Provost <kristof@sigsegv.be>
Subject: Re: /proc/${PID}/cmdline parsing
Date: Thu, 3 Jun 2010 14:38:26 +0200
Message-ID: <20100603123825.GE4720@nereid>
References: <20100603092026.4807b1bb@pbmiha.malagasy.com>
 <20100603091935.GA15493@joel-laptop>
 <20100603122929.0782ae55@pbmiha.malagasy.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20100603122929.0782ae55@pbmiha.malagasy.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Mihamina Rakotomandimby <mihamina@gulfsat.mg>
Cc: linux-newbie@vger.kernel.org

On 2010-06-03 12:29:29 (+0300), Mihamina Rakotomandimby <mihamina@gulfsat.mg> wrote:
> > Joel Fernandes <agnel.joel@gmail.com> :
> >> If I launch a 
> >>  $ watch find / -type f -name 'toto'
> >> (it's a useless command just for the example)
> >> and then I get the PID of this.
> >PID of what? watch or find?
> 
> PID of "watch"
> 
> >> When I 
> >>  $ cat /proc/${PID}/cmdline
> >>  watchfind/-typef-nametoto
> >> Yes, it's the command line, but I would like to parse it, in order to
> >> display the launched executable + its arguments.
> >> How to parse it?
> >Could you be a bit more clear with your question?
> 
> I want to split "watchfind/-typef-nametoto" (the content
> of /proc/${PID}/cmdline) to get "watch find / -type f -name toto" (the
> command I issued above)
> 
> But I cannot figure out how to split it.
> Would you know another place in the system I should look at?
> 

Running 'hexdump -C /proc/2202/cmdline' produces this:

00000000  2f 73 62 69 6e 2f 67 65  74 74 79 00 33 38 34 30 |/sbin/getty.3840|
00000010  30 00 74 74 79 31 00                             |0.tty1.|
00000017

It looks like the fields are separated by 0 bytes.
You'll simply need to read the file and split on every zero byte.

Kristof

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
