From: nksahita@softhome.net
Subject: Re: Problem running two domains on one Apache server
Date: Wed, 18 Jun 2003 02:39:13 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <courier.3EF02531.00007626@softhome.net>
References: <1055903157.9558.9.camel@localhost.localdomain>
            <3EEFF697.6060309@heem.org>
            <courier.3EEFFE8A.00005CCE@softhome.net>
            <200306180834.56048.my@masterpe.nl>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200306180834.56048.my@masterpe.nl> 
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: linux-newbie@vger.kernel.org

I am able to do with 'NameVirtualHost *'.  I can't specify IP number because 
I don't have fix IP and am using Dynamic DNS Service provided by 
http://www.dyndns.org. 

For details check - http://www.dyndns.org/support/kb/apachevhosts.html 

Master_PE writes: 

>> >>>
>> >>> <VirtualHost *>
>> >>> DocumentRoot "/var/www/html/test1"
>> >>> ServerName nstest1.homedns.org
>> >>> DirectoryIndex index.html index.php index.htm
>> >>> </VirtualHost>
>> >>>
>> >>> <VirtualHost *>
>> >>> DocumentRoot "/var/www/html/test2"
>> >>> ServerName nstest2.homedns.org
>> >>> DirectoryIndex index.html index.php index.htm
>> >>> LogLevel debug
>> >>> </VirtualHost>
> 
> NameVirtualHost * 
> 
> Doesn't NameVirtualHost need a IP number?  
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
