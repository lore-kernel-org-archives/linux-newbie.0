From: Ray Olszewski <ray@comarre.com>
Subject: RE: ADSL connection failed
Date: Sun, 20 Feb 2005 07:46:56 -0800
Message-ID: <5.1.0.14.1.20050220073508.02068920@celine>
References: <20050220082642.15673.qmail@web52505.mail.yahoo.com>
Mime-Version: 1.0
In-Reply-To: <20050220082642.15673.qmail@web52505.mail.yahoo.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: edy boke <edi_xpress_net@yahoo.com>, linux-newbie@vger.kernel.org

At 12:26 AM 2/20/2005 -0800, edy boke wrote:
>Hi, Ray.
>
>Sorry, to disturb you in this holiday. But, I've been trying to contact 
>you in the last 2/two working days, but, failed because of problem in my 
>linux machine.
>Now, I use another machine and succeeded to contact you. This is the report.
>After you suggest to remove my on-LAN server number from my 
>/etc/resolv.conf, I just did that. And, bingo, the machine just connected 
>to the net. So, you were right. I could browse and test my e-mail ( I use 
>ximian evolution ).
>But, when I tried to report to you via my machine, it just gone berserk. 
>It can't send mail.
>It always said something like this ( sorry, I can't describe more 
>accurately, because I'm working on people's machine ) :
>RCPT TO <mailto:xxx@xxx.xxx.xxx>xxx@xxx.xxx.xxx failed. 
><mailto:xxx@xxx.xxx.xxx>xxx@xxx.xxx.xxx . . . Relaying temporarily denied. 
>Can't resolve PTR record of 222.154.xx.xx
>
>That's way I could not report to you the result of what I've done 
>according to your suggestion.
>So, my next question is : how to activate my linux mail. I thought it's 
>still about name resolution, but this time other name out of the LAN. I 
>could send to my own address on another machine on-LAN. I thought this was 
>just ( DNS jobs ) about other name out of LAN.
>
>What could you suggest, so I could contact you from my linux box.


It is hard to answer this question without any information on the "it" that 
"always said something like this". That is, what application are you using 
to send e-mail (apparently Ximian Evolution, but I've never used it), and 
how is that application sending it? And what does "222.154.xx.xx" refer to 
... what host has that IP address? And *where* does "it" say this ... in an 
alert box that pops up? In a mail-bounce message? Someplace else?

With so little info, I can only guess really, but my best guess is that you 
are getting this message from your ISP's SMTP server in an app (a Web 
browser, maybe ... I've never used Ximian Evolution and don't know what it 
is) that uses it directly to send e-mail. That SMTP server thinks you are 
sending the e-mail from 222.154.xx.xx and it objects to relaying SMTP 
traffic from that IP address. The "Can't resolve PTR record" piece means 
that the SMTP server is unable to do a reverse lookup of the address (find 
the FQDN associated with it), which might be a DNS problem or might just 
mean that whoever is authoritative for that address hasn't created a PTR 
record for it. (Try the command "host 222.154.xx.xx", with the real address 
of course, and see it it resolves ... I'd try it here for you if you hadn't 
elected to conceal the C and D quads in your report to the list.)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
