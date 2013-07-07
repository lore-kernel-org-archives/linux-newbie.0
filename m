From: Pankaj Jangra <jangra.pankaj9@gmail.com>
Subject: Re: severeCamelCaseInfestation
Date: Sun, 7 Jul 2013 11:26:32 -0700
Message-ID: <CADTbHxpZPwoUje=hxBddxEE61zhbAMDi=bJ1Y+WHfnS_RvXRbg@mail.gmail.com>
References: <51AD7ACD.90900@gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=3vQhoANEBeEhrljxDMoKChOOQbeuN5uRbNd/6f8yBTw=;
        b=H74tngQgl+1J8A5zY9XV8pcErJSEMbnyMIoqgfNt/8ZxY7U5LQ62XAvq22Qne+PZ+F
         a92lVR3SDxEjv/l/Qe58xbUo+scxLWQkhq0hWu027P9LMqFmS8Gx9io6dKKnNaum+VJa
         q/odWi/GbairJfosY1fN0CSG6QVk0E3IUcWqLDuNH0G4zPcE9RbKZ1tL6MZKUg+IwTQc
         u/OVWV7OnFaOis1/F92biMASKSOQv9CvQbOJboShvZ9YdphMhTryb44mdiGfuVDqdD8B
         cKCwo+gZi0zrSpZg4q6FeXGk79F6eSZ2/Atvn/cLdLl+pU6Kf20b0EH//gRhdfxtG130
         INRw==
In-Reply-To: <51AD7ACD.90900@gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Harsh Kumar <harsh1kumar@gmail.com>
Cc: "linux-newbie@vger.kernel.org" <linux-newbie@vger.kernel.org>

Hi Harsh,

On Mon, Jun 3, 2013 at 10:27 PM, Harsh Kumar <harsh1kumar@gmail.com> wrote:
> Hi,
>
> 1.) What is the naming convention/style for linux kernel? Is camel case not allowed & only snake case is allowed?
>
> I found a TODO in drivers/staging/winbond/TODO which says - fix severeCamelCaseInfestation
>
> 2.) If only snake case is to be used, are there any other stipulations (like starting a type of variable name with underscore) ?
>
> 3.) I have read Documentation/CodingStyle. Is there any other document on this?
>
This document is sufficient in my opinion. Also you can check your
changes with scripts/checkpatch.pl. This scripts will also help you to
learn more.

Regards,
Pankaj Jangra
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
