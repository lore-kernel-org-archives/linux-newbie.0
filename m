From: "Randy.Dunlap" <rddunlap@osdl.org>
Subject: Re: OOPS in Kmalloc
Date: Wed, 23 Apr 2003 21:34:58 -0700 (PDT)
Sender: linux-kernel-owner@vger.kernel.org
Message-ID: <32992.4.64.197.106.1051158898.squirrel@www.osdl.org>
References: <200304240344.JAA29170@WS0005.indiatimes.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-kernel-owner+linux-kernel=40quimby.gnus.org@vger.kernel.org>
In-Reply-To: <200304240344.JAA29170@WS0005.indiatimes.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: ramands@indiatimes.com
Cc: linux-kernel@vger.kernel.org, linux-newbie@vger.kernel.org

> Hello,
> i am getting OOPS in Kmalloc .
>
> void **data;
> qset = 1000;
>
> dptr->data = kmalloc(qset * sizeof(char *), GFP_KERNEL);
>
> what could the possible the cause of the error
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
As I am so fond of saying, it's almost always correct to indicate what
kernel version one if referring to in a problem report.

Please decode the oops output and post it here.

~Randy


