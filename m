From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: Something funny in Mail
Date: Sun, 14 Jul 2002 16:58:48 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0207141653270.2281-100000@orthanc.lemmerling.net>
References: <200207140215.g6E2Fpc01975@philonline.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200207140215.g6E2Fpc01975@philonline.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

On Sun, 14 Jul 2002, Peter wrote:

> Hi,
> 
> 
> for more than 2 years when I give the <italic>mail</italic> command I would 
> get the following message first: Unknown command: "Albert"; now all of a 
> sudden I get: Unknown command: "Jim".
> 
> 
> After that command proceeds as expected. So it's no bother I now just wonder 
> how that happens. Both Albert and Jim are friends of mine.

Look into your '.mailrc' in your home-directory; it's probarly containing
the names Albert and Jim. 

I've tried some and i got this:
bash-2.05a$ mail
Unknown command: "jopie"
No mail for jos

On that moment the file '.mailrc' was containing 'jopie'. When i deleted
the name it works fine again.


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
