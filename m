From: Rajat Jain <rajatxjain@gmail.com>
Subject: Question about devm_kzalloc() and friends
Date: Thu, 19 Nov 2015 12:38:24 -0800
Message-ID: <CAA93t1oPgQt8gYDUfQu25CrhP0MQ5oPNNmV-YrWoOFvXUXZR9g@mail.gmail.com>
Reply-To: rajatxjain@gmail.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:date:message-id:subject:from:to:content-type;
        bh=66E7PHbbLXbr4smagws78GahC04uvcpQu3jJyxhBLuk=;
        b=saq3dLhwCdkMJFe8RSWrELwR43VK5pw2xSb51RwFjWq8jQ0q7V/Bt7XtX2NL9z6DxR
         jszLIug9TihsudxQDs2MnPHcUgRM+SZIo3X5I61rFYprD/X0C6uTgP0s7MWKPA34D1EF
         TsPDCuTcVZGyltkA/LJONsyl9k8dM3v10X/CBXb0qLWJ2NEusYb6TlryQuuBtYrGk6Te
         D6MmNc31UXr5AoPYU8ujpCTyYzbGbd0r+IEqEfC7bGED7vnXN2xn17dz72EzuvyCJvD1
         6q6fhN8h9p3PDKbYpZm28UAebJgUpM9lI4kPhqjXN8lRI1uwnxq+0UW3XgjOzaggnkZ1
         d8Eg==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, kernelnewbies@nl.linux.org

Hi,

Can some one tell me if that memory allocated by these functions is
freed when the last reference (pointer) to the MEMORY goes out of
scope, or when the last reference to the DEVICE is put?

For instance:

probe()
{
    ptr = devm_kzalloc(dev, ....)
    ptr = devm_kzalloc(dev,.....)
}

The reference to the first memory goes away as soon as I make the
second call, but the device stays around. So when is the first memory
freed? At the second call or at the device removal time?

Thanks,

Rajat
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
