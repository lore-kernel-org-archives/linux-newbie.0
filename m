From: "pradeep singh" <2500.pradeep@gmail.com>
Subject: Re: vmalloc and page faults (was: memory descriptor and kernel threads)
Date: Thu, 19 Apr 2007 18:40:16 +0530
Message-ID: <366312910704190610u496c8a73qc4b8ed2026c61805@mail.gmail.com>
References: <b115cb5f0704190525o252cc0e9ua84949dff7706542@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:cc:in-reply-to:mime-version:content-type:content-transfer-encoding:content-disposition:references;
        b=AZJ7K8tMCcMeiWtaLixXQZrqbCytG/0A9etwnTVSGxKa0bTzjBQIPDKRjO3XQ59NuVzJCrmsU5r2f14O/GpvN58SQCgYYhwbogKCK1qha/2cysBsgTM4qEYvUm7K54DXjL66F/XeFYt30Tem4OMm7NiGvVbH1Tuzaf9khprITEM=
In-Reply-To: <b115cb5f0704190525o252cc0e9ua84949dff7706542@mail.gmail.com>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rajat Jain <rajat.noida.india@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

On 4/19/07, Rajat Jain <rajat.noida.india@gmail.com> wrote:
> Hi,
>
> > ... the kernel thread is as sensitive as the kernel itself
> > for the page faults. It _should not_ fault, unless ofcourse if its a
> > vmalloc'ed area .. and that happens every other kernel path anyway....
>
> I have a doubt about the vmalloc'ed memory. Is the vmalloced chunk of
> memory allowed to be swapped out? Can it / Does it?
No, it is not swappable, you get non contigous chunks of memory
allocated using kmalloc actually. Therefore, IMHO it is not swappable.
please CMIIW.

 My doubt arises
> from the fact that the memory for the loadable modules at module load
> time is allocated using vmalloc() ...
Yes, looks to me too :).But here is another question to all.
Why vmalloc is used to allocate memory for modules and not kmalloc?
Even though memory we can get using vmalloc is from a scarce pool.

TIA
~psr
>
> Thanks,
>
> Rajat
>
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
>
>


-- 
play the game
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
