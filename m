From: Rajat Jain <rajatxjain@gmail.com>
Subject: Re: debugfs_remove_recursive() while a file is in use by userspace
Date: Mon, 28 Dec 2015 12:56:34 -0800
Message-ID: <CAA93t1pGbYwTE-CpJwG8UWR3d3TS4m3oWJYrpycjyjOYoGBkLw@mail.gmail.com>
References: <CAA93t1pTkDpaZpQuVu0bQpxsxxUDViKU6-bLbporqkyHCJ0=mw@mail.gmail.com>
	<87poxqqp86.fsf@gmail.com>
Reply-To: rajatxjain@gmail.com
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:reply-to:in-reply-to:references:date:message-id
         :subject:from:to:cc:content-type;
        bh=QJ6wZlDZtu6/WD6t7UYPQVOvek9bZFaRxoMxlYlWmXQ=;
        b=VXvmMuT+CdTfCj3Wmb8RNU4pDVXJLA0P3h5oqYFjfcbIePm9O/9XYsCIaYbkhYiUFG
         0J1gUOtDGl8fvPQQmgeK1aP4wPfV0gSrGls5B7qMEX2Ja8Sn+N53eV+L9XL00dIxDkKb
         ZVXzNazv+Wbehf1QLk6XFQuftdsksqGvV4CHpbYHtKq8VoDdH8ulYwbAWiHf7m9HDAQ2
         BI4/mZESklKbQrDsA887zDOJ04TFa0nxs6fE6emzQI4x09grVuAhmRGtcQim626/vQV1
         HPhDXWcpsbNOALKqH93fbg8kO1PTcfWWCa4zfA9HG4vPA697C3Pu6HHV90Jl9dZgwek0
         NxdA==
In-Reply-To: <87poxqqp86.fsf@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Nicolai Stange <nicstange@gmail.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org, Greg Kroah-Hartman <greg@kroah.com>

>
> The current state is that both question are to be answered with "no",
> i.e. debugfs file removal is racy.
>

Ouch! :-(. Thanks for confirming!

Somewhat related, is my understanding correct that the behaviour of
character device layer w.r.t. the two questions that I asked the
answer to my questions would be "yes"?

i.e. cdev_del() would wait

>> (1) until all the currently executing file operation methods
>> (read/write/map etc) have returned?

AND

>> (2) until the user has given up all references (descriptors) to the
>> files (i.e. until release() method has been
>> called)?

Thanks,

Rajat


On Mon, Dec 28, 2015 at 12:42 PM, Nicolai Stange <nicstange@gmail.com> wrote:
> Hi Rajat,
>
> Rajat Jain <rajatxjain@gmail.com> writes:
>
>> Hi,
>>
>> I wanted to understand the behavior taken when a module calls
>> debugfs_remove_recursive() on a directory, while files under that
>> directory may still be in use by the userspace (for instance an
>> ongoing read / write operation).
>>
>> Does the function wait
>>
>> (1) until all the currently executing file operation methods
>> (read/write/map etc) have returned?
>> OR
>> (2) until the user has given up all references (descriptors) to the
>> files under the directory (i.e. until release() method has been
>> called)?
>
> The current state is that both question are to be answered with "no",
> i.e. debugfs file removal is racy.
>
> I've recently sent a patch addressing this issue:
>   https://lkml.kernel.org/g/87y4dfukzy.fsf@gmail.com
>
> Basically, it turns the answer to your first question into "yes".
> Subsequent reads/writes will return a -EIO.
>
> That patch (series) is still under review though.
>
> Further reference can be found in the *sub*-thread rooted at
>   http://thread.gmane.org/gmane.linux.kernel/1452470/focus=1467314
>
> Best,
>
> Nicolai
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
