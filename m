From: "James Turnbull" <james@lovedthanlost.net>
Subject: Re: DBCS ?
Date: Tue, 8 Apr 2003 12:09:00 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <013f01c2fd73$d28a71b0$d700a8c0@iih.usyd.edu.au>
References: <200304080656.04098.fox@sby.centrin.net.id>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: adwin <fox@sby.centrin.net.id>, linux-newbie@vger.kernel.org

---- Original Message ----- 
From: "adwin" <fox@sby.centrin.net.id>
To: <linux-newbie@vger.kernel.org>
Sent: Tuesday, April 08, 2003 9:56 AM
Subject: DBCS ?


> hello ...
>
> does anyone know what is DBCS ?
> I need that to run Eclipse 2.1 on GTK 2.2 ....
>

DBCS is short for double-byte character set.  It uses two-byte (16 bits)
characters rather than one-byte (8 bit) characters.  It's needed for
languages like Chinese/Japanese/Korean where characters can't nbe
represented by single byte character sets like ASCII or IBM's EBCDIC.

You should only require it if you are using one of these type of languages.

Most of the time - if available - it comes as an add on library for whatever
software you are using.

Regards

James Turnbull

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
