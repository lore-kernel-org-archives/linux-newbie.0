From: Arjan van de Ven <arjan@infradead.org>
Subject: Re: Getting local IP / MAC address
Date: Fri, 01 Sep 2006 13:51:17 +0200
Message-ID: <1157111477.2863.28.camel@laptopd505.fenrus.org>
References: <292693080609010334k4baadb0dpfe9716c6e45045b7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <292693080609010334k4baadb0dpfe9716c6e45045b7@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

On Fri, 2006-09-01 at 16:04 +0530, Daniel Rodrick wrote:
> Hi,
> 
> Possibly this is not the best list to ask, but still, would appreciate
> if some one could help.
> 
> Is there any portable / standard way to get the local IP & MAC address

well you speak as if there is one, but of course there can be many! Most
likely you'll find at least 2, probably more.


> Also would it provide me only IP address. Any way of getting MAC address?

if you look at the ifconfig program, which is written in C, it gives you
this information. So I suggest that you look at the sourcecode for this
program to see how that program does it... 

Greetings,
   Arjan van de Ven

-- 
if you want to mail me at work (you don't), use arjan (at) linux.intel.com

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
