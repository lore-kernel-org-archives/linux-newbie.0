From: Vladimir Budnev <vladimir.budnev@gmail.com>
Subject: Re: Any utility to capture a Konsole session.
Date: Fri, 02 Dec 2011 15:34:16 +0400
Message-ID: <4ED8B7B8.6080902@gmail.com>
References: <CAGZFCEGfmcDRyPwW4swPNLa1VPNDO=vD9UDF_k8WuM+wmYsKYA@mail.gmail.com>	<CAPhiTEF4-vkewHgUTyC4oOA6_fKZofR_xVW00Ud5YywzsdKJ=Q@mail.gmail.com> <CAGZFCEGnUV9N3OMb+nobKS_RsDLyhTA=0X3ByYL6qC+FScWiFA@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=message-id:date:from:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=k55RtbwRYaSfNYIiAofuD8EB/z+8/nbboL1DzaWqRIg=;
        b=sbljBk+F7sKHZ4kTZDRk5rfR5OLPLRj6LqivSPQG5BEL4RvZTqzv/iS2HyyRKDoHy4
         +OhLxUiZqBU83dSbtLwZN1kuhwGnfPqWg0mU72lUlJCe00EpKaWSFfuvRuUvyJ5JRm33
         7IBz+80aOuQuDklOuvD+BXLjg7aGroHTfWtLw=
In-Reply-To: <CAGZFCEGnUV9N3OMb+nobKS_RsDLyhTA=0X3ByYL6qC+FScWiFA@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: ratheesh kannoth <ratheesh.ksz@gmail.com>
Cc: linux-newbie <linux-newbie@vger.kernel.org>

On 12/01/11 12:54, ratheesh kannoth wrote:
> I want all commands and its ourput to log like below
>
>
> fox@xcr-lnx1:~/workout/test2 ] $ ls
> cat  rat
> [fox@xcr-lnx1:~/workout/test2 ] $ ps
>    PID TTY          TIME CMD
> 11119 pts/37   00:00:00 csh
> 11132 pts/37   00:00:00 bash
> 11146 pts/37   00:00:00 ps
> [fox@xcr-lnx1:~/workout/test2 ] $
>
> On Thu, Dec 1, 2011 at 2:19 PM, Frederick Kautz<fkautz@gmail.com>  wrote:
>> Can you be more specific about what you are trying to do?
>>
>> For starting, a common technique is to use
>>
>> $ tail -f /var/log/[logname]
>>
>> to watch a specific log in a terminal. You can also specify multiple log
>> files to follow.
>>
>> On Dec 1, 2011 12:32 AM, "ratheesh kannoth"<ratheesh.ksz@gmail.com>  wrote:
>>> I am using Kde  User interface in fedora.
>>>
>>> i  would like to log all the  logs on a konsole. I could not find any
>>> logging fecility in  konsole. Is there any utility ?
>>>
>>>
>>> -Ratheesh
>>> --
>>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>>> the body of a message to majordomo@vger.kernel.org
>>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>> Please read the FAQ at http://www.linux-learn.org/faqs
> --
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs

You could try an utility called 'script'.
Here is a little howto link with examples:
http://www.hermann-uwe.de/blog/capturing-and-replaying-console-terminal-sessions-with-script-and-scriptreplay

Hope it helps :)
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
