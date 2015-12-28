From: Nicolai Stange <nicstange@gmail.com>
Subject: Re: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 21:42:49 +0100
Message-ID: <87poxqqp86.fsf@gmail.com>
References: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:content-type;
        bh=THLvfvUAxfHoAfp2OSjqkG2NBQ3gKtYoF++u86R5onc=;
        b=YwdpdhDxlAGQNo2ZBot1avKONs8504hg3kKGNi2J8SnIZ8HmqbxfBVfKayrXxT7g90
         sVrGf18UMqQHN0RMt3iKfXva+59qir+HyHhXYdzUXJywX68wdrnI2LMyNDC8hkNnNLDc
         QTp0CFHG5vISnpmHWSSi6tOOOgjBNeat2wkKAPZY+K09sDgdH9/O3/Eg4+3ocDAnNTHt
         pNIPL58rRR+zkaLLsS6Pfx8GAKRKBHS8+dRF/nPraIK9Lp4sCA/h+S+lsEWRUK1ikKXx
         7lt1XLhnkvbSAR2Pf70teki8ZpkoHlxkE9M6jG7t1PrYy2pW4JH0u7ZENZ3nCk8kUkFE
         taqg==
In-Reply-To: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
	(Rajat Jain's message of "Mon, 28 Dec 2015 12:27:22 -0800")
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rajat Jain <rajatxjain@gmail.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org, Greg Kroah-Hartman <greg@kroah.com>

Hi Rajat,

Rajat Jain <rajatxjain@gmail.com> writes:

> Hi,
>
> I wanted to understand the behavior taken when a module calls
> debugfs_remove_recursive() on a directory, while files under that
> directory may still be in use by the userspace (for instance an
> ongoing read / write operation).
>
> Does the function wait
>
> (1) until all the currently executing file operation methods
> (read/write/map etc) have returned?
> OR
> (2) until the user has given up all references (descriptors) to the
> files under the directory (i.e. until release() method has been
> called)?

The current state is that both question are to be answered with "no",
i.e. debugfs file removal is racy.

I've recently sent a patch addressing this issue:
  https://lkml.kernel.org/g/87y4dfukzy.fsf@gmail.com

Basically, it turns the answer to your first question into "yes".
Subsequent reads/writes will return a -EIO.

That patch (series) is still under review though.

Further reference can be found in the *sub*-thread rooted at
  http://thread.gmane.org/gmane.linux.kernel/1452470/focus=1467314

Best,

Nicolai
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
