From: Chris Largret <largret@gmail.com>
Subject: Re: Bash Script
Date: Mon, 21 Nov 2005 00:10:27 -0800
Message-ID: <1132560627.32698.4.camel@shogun.daga.dyndns.org>
References: <20051121104538.3B83.SAVAGE-GARDEN@hanikamail.com>
Reply-To: largret@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20051121104538.3B83.SAVAGE-GARDEN@hanikamail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Kev <savage-garden@hanikamail.com>
Cc: linux-newbie@vger.kernel.org

On Mon, 2005-11-21 at 10:45 +0600, Kev wrote:
> Hi,
> 
> im trying to setup a RBL DNS server for my testing. 
> im trying to write a bash scrip that add the IP's to add bind zone.
>
> im having a prb transferring the ip in reveres format (192.168.1.2 -->
> 2.1.168.192) 
> 
> can any one help me to do this with a bash script ?

I don't know too much about RBL DNS servers, but changing the number
sequence around for an IP should be pretty easy:

#!/bin/sh

IP='192.168.1.2'
echo $IP|sed -r
's/^([0-9]+)\.([0-9]+)\.([0-9]+)\.([0-9]+)$/\4.\3.\2.\1/'

Essentially, it performs a regular expression replace. It finds the four
groups of numbers and reverses the order (#4 goes first, #3 second,
etc.).

--
Chris Largret <http://daga.dyndns.org>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
