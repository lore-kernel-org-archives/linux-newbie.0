From: Jim Limmer <jim@heem.org>
Subject: Re: Problem running two domains on one Apache server
Date: Tue, 17 Jun 2003 23:46:04 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3EEFE07C.7090309@heem.org>
References: <1055903157.9558.9.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1055903157.9558.9.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Change it so it looks like this

<VirtualHost *>
DocumentRoot "/var/www/html/test1"
ServerName nstest1.homedns.org
DirectoryIndex index.html index.php index.htm
</VirtualHost>

<VirtualHost *>
DocumentRoot "/var/www/html/test2"
ServerName nstest2.homedns.org
DirectoryIndex index.html index.php index.htm
LogLevel debug
</VirtualHost>

the directive in the vitrual host line is what tells apache what 
interface/ip to listen on. assuming you only have one IP address on that 
box, you could also just put that address there instead of the *



Nilesh Sahita wrote:

>Hi,
>
>I am trying to run two domains on one Apache domain.
>
>The system config is:  RH9, Apache 2.0.40
>
>I setup two domains - nstest1.homedns.org and nstest2.homedns.org
>
>In Apache configuration, I create two virtual servers - the entries from
>httpd.conf are:
>
>Quote
>
>...
>
>NameVirtualHost *
>
><VirtualHost nstest1.homedns.org>
>DocumentRoot "/var/www/html/test1"
>ServerName nstest1.homedns.org
>DirectoryIndex index.html index.php index.htm
></VirtualHost>
>
><VirtualHost nstest2.homedns.org>
>DocumentRoot "/var/www/html/test2"
>ServerName nstest2.homedns.org
>DirectoryIndex index.html index.php index.htm
>LogLevel debug
></VirtualHost>
>
>End-quote
>
>  
>


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
