From: "Brian Jackson" <brian-kernel-list@mdrx.com>
Subject: Re: string manipulating?
Date: Sun, 05 Jan 2003 11:23:30 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030105172330.1547.qmail@escalade.vistahp.com>
References: <200212081837.LAA15273@cu.imt.net>
            <3DF44FE9.69FB5E4D@ihug.co.nz>
            <3E186154.D32669EB@gelm.net>
            <20030105172002.1499.qmail@escalade.vistahp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20030105172002.1499.qmail@escalade.vistahp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Chuck Gelm <nc8q@gelm.net>
Cc: linux-newbie@vger.kernel.org

Oops. I meant: 

grep $your_options | cut -f2 -d\( | cut -f1 -d\) 

Brian Jackson writes: 

> Maybe something like:  
> 
> grep $your_options | cut -f2 -d( | cut -f1 -d)  
> 
> That might work. Hard to say for sure, but it looks right. Should give you 
> just the IP address. HTH  
> 
> --Brian Jackson  
> 
> Chuck Gelm writes:  
> 
>> Howdy, Y'all:  
>> 
>>  Using 'grep' I've parsed some stdout to lines ending in
>> ...(123.45.67.89):
>>  How can I either:
>>   extract the last 17 characters
>>   all characters after the first "("
>>   all characters from "(" to ")"
>>  ?  
>> 
>>  I tried
>> cut -c ".0123456789" filename.txt
>>  but it returns cut: invalid byte or field list.
>>  :-|  
>> 
>> Regards, Chuck
>> -
>> To unsubscribe from this list: send the line "unsubscribe linux-newbie" 
>> in
>> the body of a message to majordomo@vger.kernel.org
>> More majordomo info at  http://vger.kernel.org/majordomo-info.html
>> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
 
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
