From: Nilesh Sahita <nksahita@softhome.net>
Subject: Re: Problem running two domains on one Apache server
Date: 18 Jun 2003 12:41:12 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <1055911271.12648.2.camel@localhost.localdomain>
References: <1055903157.9558.9.camel@localhost.localdomain>
	 <3EEFE07C.7090309@heem.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3EEFE07C.7090309@heem.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi Jim,

My IP address is dynamic - so I guess it is not possible to put IP
address instead of * as you suggested.  Am I right?

I tried changing <VirtualHost nstest1.homedns.org> to <VirtualHost *>.

When I do that, upon trying to access http://nstest1.homedns.org, I get
error:

Quote

Bad Request
Your browser sent a request that this server could not understand.
Reason: You're speaking plain HTTP to an SSL-enabled server port.
Instead use the HTTPS scheme to access this URL, please.


        Hint: https://nstest1.homedns.org/

________________________________________________________________________
Apache/2.0.40 Server at nstest1.homedns.org Port 80

End-quote

If I try to access via https://nstest1.homedns.org, it works.

Any idea why this is happening?

TIA.

Regards,
- Nilesh


On Wed, 2003-06-18 at 11:46, Jim Limmer wrote:
> Change it so it looks like this
> 
> <VirtualHost *>
> DocumentRoot "/var/www/html/test1"
> ServerName nstest1.homedns.org
> DirectoryIndex index.html index.php index.htm
> </VirtualHost>
> 
> <VirtualHost *>
> DocumentRoot "/var/www/html/test2"
> ServerName nstest2.homedns.org
> DirectoryIndex index.html index.php index.htm
> LogLevel debug
> </VirtualHost>
> 
> the directive in the vitrual host line is what tells apache what 
> interface/ip to listen on. assuming you only have one IP address on that 
> box, you could also just put that address there instead of the *
> 
> 
> 
> Nilesh Sahita wrote:
> 
> >Hi,
> >
> >I am trying to run two domains on one Apache domain.
> >
> >The system config is:  RH9, Apache 2.0.40
> >
> >I setup two domains - nstest1.homedns.org and nstest2.homedns.org
> >
> >In Apache configuration, I create two virtual servers - the entries from
> >httpd.conf are:
> >
> >Quote
> >
> >...
> >
> >NameVirtualHost *
> >
> ><VirtualHost nstest1.homedns.org>
> >DocumentRoot "/var/www/html/test1"
> >ServerName nstest1.homedns.org
> >DirectoryIndex index.html index.php index.htm
> ></VirtualHost>
> >
> ><VirtualHost nstest2.homedns.org>
> >DocumentRoot "/var/www/html/test2"
> >ServerName nstest2.homedns.org
> >DirectoryIndex index.html index.php index.htm
> >LogLevel debug
> ></VirtualHost>
> >
> >End-quote
> >
> >  
> >
> 
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
