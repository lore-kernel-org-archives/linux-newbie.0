From: dave <dave@dpomeroy.com>
Subject: Re: long resolve
Date: Fri, 10 Sep 2004 06:12:09 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4141B639.2010703@dpomeroy.com>
References: <414125B7.60903@dpomeroy.com> <4141324D.9000601@kevino.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4141324D.9000601@kevino.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Mike,
  Thanks for the help.  I did that but when I restart it picks up both 
addresses and makes the one that won't work first.
  Thanks again.
Dave


Mike wrote:

>Dave,
>you should be able to disable a dns server address in the
>/etc/resolv.conf file. As root open up an editor and comment it out
>or remove it.
>
>You may have to do a "service network restart" without quotes as root.
>
>Mike
>
>
>dave wrote:
>  
>
>>I pinged the 2 ip addresses in the network config for dns.  The first
>>one will not respond so I'm guessing there is a problem with this
>>server.  I'll call tomorrow and get it fixed.  I can't seem to figure
>>out how to disable the os from trying to use that first ip address.  I'm
>>mandrake 10.0 official.
>>Dave
>>
>>    
>>
>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>


-- 
Dave Pomeroy K7DNP SouthEastern Washington

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
