From: Kev <savage-garden@hanikamail.com>
Subject: Re[3]: Linux Help
Date: Tue, 20 Jul 2004 08:07:00 +0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040720080653.18AD.SAVAGE-GARDEN@hanikamail.com>
References: <20040720000602.4847.SAVAGE-GARDEN@hanikamail.com> <5.1.0.14.1.20040719120622.01fb9448@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040719120622.01fb9448@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

> Well ... if you have an SMTP server on a LAN ("local") host, running an 
> SMTP relay on the firewall/router is probably unnecessary. What you can do 
> (this is what I do here) is DNAT (port forward) traffic coming to port 25 
> on the router's external interface to port 25 on the existing SMTP server. 
> Then you can run your greylist and virus checking on that server.

i got a windows 2000 with exchange as the mail server, 
so i dont like to keep it as the SMTP coz of the virus. so i think its better to have a vires wall with the SMTP on the firewall.


> As to outgoing SMTP traffic, there is no need to "relay" it from the LAN 
> SMTP server. Ordinary NATing will handle outgoing SMTP traffic from that 
> server 

load is really on the mail server so we need a relay to take the load off the server. (mail server)

On Mon, 19 Jul 2004 12:11:20 -0700
Ray Olszewski <ray@comarre.com> wrote:

> At 12:08 AM 7/20/2004 +0600, Kev wrote:
> >Hi Ray...
> >
> >Thanks agane for the reply,
> >
> >Relay mean to relay mail to my local email server that will be running
> >behind the gateway box. and to relay the email from the email server to
> >the internet as a smart host.
> 
> Well ... if you have an SMTP server on a LAN ("local") host, running an 
> SMTP relay on the firewall/router is probably unnecessary. What you can do 
> (this is what I do here) is DNAT (port forward) traffic coming to port 25 
> on the router's external interface to port 25 on the existing SMTP server. 
> Then you can run your greylist and virus checking on that server. This 
> approach minimizes the amount of stuff you have running on the 
> firewall/router, always a good idea from a security standpoint.
> 
> As to outgoing SMTP traffic, there is no need to "relay" it from the LAN 
> SMTP server. Ordinary NATing will handle outgoing SMTP traffic from that 
> server (unless you have unusual requirments imposed by your ISP ... but if 
> you do, you won't get intelligent advice about how to cope with them unless 
> you mention them).
> 
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 

------- 
Web Hosting at cheep price, stating at $1 per moth with your own domain, .COM, .NET, .LK, .ORG etc..
PHP, CGI, Perl, MySQL, Cpanel 9, POP3, POP3s, SMTP, IMAP, FTP,
http://www.orbitsl.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
