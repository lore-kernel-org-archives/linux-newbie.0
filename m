From: Kev <savage-garden@hanikamail.com>
Subject: Re[6]: Linux Help
Date: Tue, 20 Jul 2004 21:20:24 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040720211141.16B3.SAVAGE-GARDEN@hanikamail.com>
References: <20040720000918.484C.SAVAGE-GARDEN@hanikamail.com> <16636.21568.952345.578826@cerise.nosuchdomain.co.uk>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <16636.21568.952345.578826@cerise.nosuchdomain.co.uk>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-admin@vger.kernel.org, linux-newbie@vger.kernel.org

Hi guys...

i'm going to do the follwing as a 1st step,

i got a Debian 3 (woody) basic 1 CD and i'm going to have postfix as the
SMTP relay.... the BOX is a Cyrix 233Mhz with 64MB ram, (Compaq Presario)
4GB HDD with 2 Lan Cards

i'm going to install Webmin 1.5, and also DHCP for Debian that comes
with Debian (on the web site) 

do you gusy thing i can do this with a basic Debian instalation or
should i download all other CD's from the site ? now the commands like
setup on Redhat dont work, how come ? do i need to install any thing
else ?

leter on i'm going to install a 2nd HDD and Squid and BIND and some AV
for the email relay, and the RAM to 256MB.

if any one can give me the basic how to do this, or a link to some sites
(Linux for Dummies :-)

i know i sound really dumb, well i really dont know much about linux
sorry !!! 






On Tue, 20 Jul 2004 00:07:44 +0100
Glynn Clements <glynn.clements@virgin.net> wrote:

>--> 
>--> Kev wrote:
>--> 
>--> > i was just saying what i will be running on the server, i was asking if
>--> > i can run all that on a P1/166Mhz
>--> 
>--> It depends upon the amount of network traffic.
>--> 
>--> Networking daemons (and the IP filtering code) only consume CPU time
>--> when they're actually doing something, and the amount of CPU time used
>--> is roughly proportional to the amount of work they have to do.
>--> 
>--> Try it. If the load average is consistently high, you need a faster
>--> CPU. If the hard disk is always busy, you need more RAM. If the box is
>--> mostly idle but it still seems too slow, you need a faster Internet
>--> connection.
>--> 
>--> -- 
>--> Glynn Clements <glynn.clements@virgin.net>
>--> 

------- 
Web Hosting at cheep price, stating at $1 per moth with your own domain, .COM, .NET, .LK, .ORG etc..
PHP, CGI, Perl, MySQL, Cpanel 9, POP3, POP3s, SMTP, IMAP, FTP,
http://www.orbitsl.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
