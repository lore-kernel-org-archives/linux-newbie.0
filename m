From: Aroop Maliakkal <mparoop@gmail.com>
Subject: Re: server hangs after sometime on starting apache
Date: Sun, 11 Sep 2005 14:45:23 +0600
Message-ID: <4323EEA3.1020404@gmail.com>
References: <432392F2.4010002@gmail.com> <4a618d0805091102004400f1d7@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4a618d0805091102004400f1d7@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: arturas.moskvinas@gmail.com
Cc: newbie <linux-newbie@vger.kernel.org>

Hi,

Thanks for your reply. I'm getting this in my error_log

[Sun Sep 11 13:52:52 2005] [notice] child pid 857 exit signal 
Segmentation fault (11)
[Sun Sep 11 13:53:15 2005] [warn] child process 844 still did not exit, 
sending a SIGTERM
[Sun Sep 11 13:53:15 2005] [warn] child process 845 still did not exit, 
sending a SIGTERM
[Sun Sep 11 13:53:15 2005] [warn] child process 4734 still did not exit, 
sending a SIGTERM
[Sun Sep 11 13:53:15 2005] [warn] child process 847 still did not exit, 
sending a SIGTERM
[Sun Sep 11 13:53:15 2005] [warn] child process 848 still did not exit, 
sending a SIGTERM
[Sun Sep 11 13:53:15 2005] [warn] child process 849 still did not exit, 
sending a SIGTERM
Arturas Moskvinas wrote:

>>When i restart apache, the memory usage shoots up to 1041M  after some
>>time. After that, the server hangs up. Any solutions?
>>I'm using apache 1.3.33 .
>>This is the top result:-
>>!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
>>
>>Swap: 2048276k av,  209452k used, 1838824k free                    8064k
>>cached
>>
>> PID USER     PRI  NI  SIZE  RSS SHARE STAT %CPU %MEM   TIME CPU COMMAND
>>15288 nobody    16   0 1041M 939M   852 D     2.9 93.0   0:08   1 httpd
>>   7 root      10   0     0    0     0 DW    0.8  0.0   2:02   0 kswapd
>>15284 nobody    11   0 14704  12M  6660 D     0.1  1.2   0:00   2 httpd
>>15294 nobody     9   0 14300 5548  5316 D     0.1  0.5   0:00   0 httpd
>>   1 root       8   0   108   80    80 S     0.0  0.0   0:03   3 init
>>   2 root       9   0     0    0     0 SW    0.0  0.0   0:00   1 keventd
>>   3 root      18  19     0    0     0 SWN   0.0  0.0   0:00   0
>>ksoftirqd_CPU0
>>!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
>>    
>>
>
>Way too little information to help anyhow, first look in apache log
>files, maybe some script is trying to use this much of memory and so
>on. And of course it is much better to ask on apache mailing list than
>on linux-newbie...
>
>Arturas M.
>
>  
>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
