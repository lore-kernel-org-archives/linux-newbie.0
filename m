From: "Brian Jackson" <brian-kernel-list@mdrx.com>
Subject: Re: string manipulating?
Date: Sun, 05 Jan 2003 19:22:30 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030106012231.3882.qmail@escalade.vistahp.com>
References: <200212081837.LAA15273@cu.imt.net>
            <3DF44FE9.69FB5E4D@ihug.co.nz>
            <3E186154.D32669EB@gelm.net>
            <20030105172002.1499.qmail@escalade.vistahp.com>
            <20030105172330.1547.qmail@escalade.vistahp.com>
            <3E18D2B9.1E3E415C@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E18D2B9.1E3E415C@gelm.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

Okay it goes like this: 

grep $your_options | cut -f2 -d\( | cut -f1 -d\) 

the second part -- cut -f2 -d\( -- says to cut what comes out of grep into 
fields using ( as the delimiter -- remember, it has to be escaped 

the third part -- cut -f1 -d\) -- says to cut the output of the second part 
into fields using ) as the delimiter 

So if you start out grep'ing your file with output that looks like: 

...(123.45.67.89): 

feed that through -- cut -f2 -d\( -- and you get: 

123.45.67.89): 

Which is the second field [-f2] after the cut [-d\(]
You then feed that through -- cut -f1 -d\) -- and you get: 

123.45.67.89 

The first field[-f1] after the cut [-d\)] 

I hope this didn't confuse you more. It is kind of hard to put this in 
writing.(for me anyways) 

 --Brian Jackson 


Chuck Gelm writes: 

> Hi, Brian: 
> 
>  Thanks.  Your suggestion is the similar to Jim's with
> the arguments reversed. 
> 
>  You and Jim have fed me. Thanks.
> Please teach me to fish.  ;-) 
> 
>  I don't understand the '-f1' and '-f2' arguments. 
> 
> IMHO, 'man cut' and 'info cut' are equally obfuscating: 
> 
> -f, --fields=LIST
>  output only these fields 
> 
> duh, what! 
> 
> Please briefly explain. 
> 
> Regards, Chuck 
> 
> 
> Brian Jackson wrote:
>> 
>> Oops. I meant: 
>> 
>> grep $your_options | cut -f2 -d\( | cut -f1 -d\) 
>> 
>> Brian Jackson writes: 
>> 
>> > Maybe something like:
>> >
>> > grep $your_options | cut -f2 -d( | cut -f1 -d)
>> >
>> > That might work. Hard to say for sure, but it looks right. Should give you
>> > just the IP address. HTH
>> >
>> > --Brian Jackson
>> >
>> > Chuck Gelm writes:
>> >
>> >> Howdy, Y'all:
>> >>
>> >>  Using 'grep' I've parsed some stdout to lines ending in
>> >> ...(123.45.67.89):
>> >>  How can I either:
>> >>   extract the last 17 characters
>> >>   all characters after the first "("
>> >>   all characters from "(" to ")"
>> >>  ?
>> >>
>> >>  I tried
>> >> cut -c ".0123456789" filename.txt
>> >>  but it returns cut: invalid byte or field list.
>> >>  :-|
<snip> 

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
