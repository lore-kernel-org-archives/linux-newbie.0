From: Marco Zunino <eng.marco.zunino@gmail.com>
Subject: Re: Socket bind failing with error -98
Date: Wed, 8 Feb 2017 06:55:17 +0100
Message-ID: <CAP__gDnXq71G+b+8WEMC=E6C90QDfon_jhM-n4g=-FMKZmXnMg@mail.gmail.com>
References: <CAGvB2rNYUXuDKM9AdaELqm-Sgn8AtkBxwDDrc_CRgqcRSCFxng@mail.gmail.com>
 <CAGvB2rM50ubvbQs1ZC1CK5GBSLjQaz74O2uv7nL4Y3iq48gnQw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=dxCw6COk4gxqfQmYsb8vFcKnFHKVGjgv/RavDsjKBrY=;
        b=lherasKn+k87R5kf6NWhEdWgHg+Bfy1R+X2BeFd+w8Z5mWP+JuOkS04IyZ0k8azbHz
         datR1CfZ2lUA7yKZCOLKiFUczmdYx/cAcz/aUzDHLZ6VCe68rNFdMf1ZSeharjIB3BN/
         IV2lwrusZkpkrr5YmESU39H7D3H/DG2mss04lidoY4M2bukCJk4EM42PKqws8H5ypwwm
         eJ4ZYfYAj3eyL4R4+eeM3+brhUa0GuwDDaCibe92//cW7CHKsGCVpw+Id3aWEpWIFR0J
         J0f0Oru6YS9UbyLLOJKMHasfAzIJ1HExFKzZOFFHvhVm7Q2YxQ2Xaa8dXMTq08kNtNQb
         UzjQ==
In-Reply-To: <CAGvB2rM50ubvbQs1ZC1CK5GBSLjQaz74O2uv7nL4Y3iq48gnQw@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Suraj Choudhari <surajschoudhari@gmail.com>
Cc: linux-newbie@vger.kernel.org, lartc@vger.kernel.org

http://man7.org/linux/man-pages/man7/socket.7.html

Assuming you are using AF_INET addresses, SO_REUSEADDR will not let
you bind() to an address if the same is already bound to an _active
listening socket_.

Also, SO_REUSEPORT option is required for all the socket that are
bound to the same address, maybe the address you are trying to bind()
to was already used by a socket that has no SO_REUSEPORT option set.

On Tue, Feb 7, 2017 at 7:27 PM, Suraj Choudhari
<surajschoudhari@gmail.com> wrote:
> Please share your thoughts about the problem.
>
> Thanks,
> Suraj
>
> On Tue, Feb 7, 2017 at 12:17 PM, Suraj Choudhari
> <surajschoudhari@gmail.com> wrote:
>> Hi experts,
>>
>> I am facing a problem while binding to TCP socket using bind()
>> function,  the problem is see for kernel versions >= 4.4.
>>
>> The bind() function is failing with error code -98.
>>
>> Currently i am calling bind() through a kernel thread.
>>
>> I searched similar errors and tried with 'setsockopt' with
>> 'SO_REUSEADDR' and 'SO_REUSEPORT ' flags.
>>
>> However, bind() still continues to fail with similar error.
>>
>> Can you please suggest if there are any other ways to fix it or any
>> particular debugging we shall do to analyze it ?
>>
>>
>> Thanks,
>> Suraj
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
