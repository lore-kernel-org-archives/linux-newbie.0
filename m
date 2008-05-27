From: "Peter Teoh" <htmldeveloper@gmail.com>
Subject: Re:
Date: Tue, 27 May 2008 13:24:06 +0800
Message-ID: <804dabb00805262224j1d5f7cf2mc076bcbb0554bac4@mail.gmail.com>
References: <200805191657.13926.a.babich@rez.ru>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        bh=76U5uHo9Hrw35lnJ4nTxY/TC9pUOej3+ngu+yvqOJQg=;
        b=oK7zXyzdkvZexG5R1DN/1f2+q4JWZjdgmON8AQ7m47qgbhQMTFRePPYJWTLOIIZ7jeMByB8bw18442wimzROvcdM53vo7cpyjVI0kwg+ydFGPG/tRBh6SDT9WCSf8fiGj1MQRpxG9y+12biymMrwB7aWiyA0fDS/o4CEXPnfrqA=
In-Reply-To: <200805191657.13926.a.babich@rez.ru>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Alexei Babich <a.babich@rez.ru>
Cc: linux-newbie@vger.kernel.org

On Mon, May 19, 2008 at 6:57 PM, Alexei Babich <a.babich@rez.ru> wrote:
> Hi all,
> How I can disable printk() output bufferization ? I need that printk() prints symbol-by-symbol or line-by-line.
>

Check this out - since it has similar embedded requirements like yours
(what is a chematic engineer?):

http://tree.celinuxforum.org/pipermail/celinux-dev/2006-July/001261.html

Read the comments part of kernel/printk.c - printk() is an amazing
function, because it can be called in ANY CONTEXT.....which also means
that it cannot sleep.   But since u know many I/O function involved
some form of waiting, therefore printk() necessarily HAVE TO WRITE TO
A BUFFER, and it only write to the screen/console whenever it is
allowed to sleep (which involved holding a  console semaphore).

In short, printk() sometimes will output to screen directly, esp when
u are not in the interrupt context.   Otherwise it may just buffer for
later delivery.

> Thank you.
> --
> Regards,
> Alexei Babich, chematic engineer, OOO NPP "Rezonans", Chelyabinsk, Russia
> http://www.rez.ru
> Jabber ID: impatt@jabber.ru
> --


-- 
Regards,
Peter Teoh
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
