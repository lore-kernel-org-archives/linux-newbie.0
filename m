From: chuck gelm <chuck@gelm.net>
Subject: Re: Displaying 'ping' data with 'tcpdump' ?
Date: Fri, 13 Aug 2004 20:40:35 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <411D5F83.4030409@gelm.net>
References: <5.1.0.14.1.20040813093835.01fe0dc0@celine> <5.1.0.14.1.20040813093835.01fe0dc0@celine> <5.1.0.14.1.20040813130631.01f9fd58@celine>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20040813130631.01f9fd58@celine>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> At 03:46 PM 8/13/2004 -0400, chuck gelm wrote:
> 
>> Hi, Everyone:
>>
>>  I am having difficulty displaying the pattern data
>> inside a 'ping' packet using 'tcpdump'.
>>
>>  I am sending a periodic 'broadcast' padded with 'data':
>> ping -f -i 3600 -p 204445204E43385120   #" DE NC8Q "
>>
>>  I want to display this data on a console.  I am using
>> 'tcpdump -i eth1 -v -X'
>> but this shows too much data/activity.
>>
>> 'tcpdump -i eth1 -v -X port 7'  displays nothing.
>>
>> Perhaps something other than 'tcpdump' would be more suitable?
>>
>> 1. How can I display only the 'echo request' packets?
> 
> 
>         tcpdump icmp[icmptype]=icmp-echo -v -X
> 
>> 2. How can I display only the 'echo reply'   packets?
> 
> 
>         tcpdump icmp[icmptype]=icmp-echoreply -v -X

:-)  Thanks, Ray.

  Now I see it in the man page. :-|

I am 'playing' with some 802.11b (USA FCC Part 15) devices
and configuring them to use frequencies inside the USA Amateur
Radio assignment (USA FCC part 97).
Then I can legally use antennas other than the ones that came
with the device.  I have some 24dbi gain dish antennas and I
want to try to use passive reflectors to overcome the
limitations of 'line of sight'.

  This 'ping - tcpdump' will show that I am compling with the
'Station Identification' requirements.

Many thanks,
Chuck

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
