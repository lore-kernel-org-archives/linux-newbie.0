From: Master_PE <my@masterpe.nl>
Subject: Re: Problem running two domains on one Apache server
Date: Wed, 18 Jun 2003 08:34:56 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200306180834.56048.my@masterpe.nl>
References: <1055903157.9558.9.camel@localhost.localdomain> <3EEFF697.6060309@heem.org> <courier.3EEFFE8A.00005CCE@softhome.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <courier.3EEFFE8A.00005CCE@softhome.net>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> >>>
> >>> <VirtualHost *>
> >>> DocumentRoot "/var/www/html/test1"
> >>> ServerName nstest1.homedns.org
> >>> DirectoryIndex index.html index.php index.htm
> >>> </VirtualHost>
> >>>
> >>> <VirtualHost *>
> >>> DocumentRoot "/var/www/html/test2"
> >>> ServerName nstest2.homedns.org
> >>> DirectoryIndex index.html index.php index.htm
> >>> LogLevel debug
> >>> </VirtualHost>

NameVirtualHost *

Doesn't NameVirtualHost need a IP number? 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
