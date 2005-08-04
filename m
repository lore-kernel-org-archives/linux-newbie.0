From: "Mukund JB." <mukundjb@esntechnologies.co.in>
Subject: RE: Running script on 2.6 fails
Date: Thu, 4 Aug 2005 17:39:38 +0530
Message-ID: <C349E772C72290419567CFD84C26E017042498@mail.esn.co.in>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-class: urn:content-classes:message
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrzej Doyle <dtsazza@gmail.com>
Cc: linux-newbie@vger.kernel.org

Dear,
It looks like a problem with opening on windows and later using it it
linux.
That worked after I wrote it manually the script

Mukund Jampala

>-----Original Message-----
>From: Andrzej Doyle [mailto:dtsazza@gmail.com]
>Sent: Thursday, August 04, 2005 4:31 PM
>To: Mukund JB.
>Cc: linux-newbie@vger.kernel.org
>Subject: Re: Running script on 2.6 fails
>
>Mukund JB. wrote:
>
>>>>[Error is:]
>>>># sh sbull_load
>>>>: command not found
>>>>' bull_load: line 4: syntax error near unexpected token '{
>>>>' bull_load: line 4: '{
>>
>
>>Dear Arturas,
>>
>>Please see the entire sbull_load script below
>>
>>Regards,
>>Mukund Jampala
>>
>>-------------------------- sbull_load script
>>-------------------------------
>>
>>#!/bin/sh
>>
>>function make_minors {
>>
>>    let part=1
>>
>>    while (($part < $minors)); do
>>
>>      let minor=$part+$2
>>
>>      mknod $1$part b $major $minor
>>
>>      let part=$part+1
>>
>>    done
>>
>>}
>>
>>...
>>
>>------------------------- sbull_load script ENDS
>>--------------------------
>>
>>
>
>Line 4 of your script is the while(...) do line.  Although I'm by no
>means an expert in shell scripting, I can see that you're referencing
>the variable $minors before either declaring it or initialising it.
>Though this might not actually throw an error, it's bad programming
>practice, since as well as the possibility of the 'default' value
>changing, it also makes your program harder to read.  I see you set the
>variable in the loop, so you could either change it into a do ... while
>loop (if you know you'll be going through it at least once), or just
add
>another "let minor=$part+$2" line just after the "let part=1" line.
>
>That said, I don't see a single '{' in that area of code that the shell
>could be complaining about.  Since it's mentioning bull_load, and
you've
>give us sbull_load (note extra s), are you sure you're running the
>script you intended, and not (perhaps) an older version of it?  If not,
>and bull_load is a short little thing that calls sbull_load to do the
>actual work, I'd still need to see bull_load since that's where the
>error lies.
>
>Andrzej
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
