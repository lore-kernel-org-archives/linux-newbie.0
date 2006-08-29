From: Ray Olszewski <ray@comarre.com>
Subject: Re: another place where bootup messages are recorded?
Date: Tue, 29 Aug 2006 16:35:48 -0700
Message-ID: <44F4CF54.5060905@comarre.com>
References: <20060817141403.10351.qmail@web81707.mail.mud.yahoo.com> <200608271145.37956.kloro2006@gmail.com> <44F1F1EE.1010106@comarre.com> <200608291131.43788.kloro2006@gmail.com> <44F4AEBA.70201@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <44F4AEBA.70201@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Chuck Gelm wrote:
> tom arnall wrote:
> 
>> Recently I have begun to get a great number of messages at boot-up 
>> which are about 'querying' scsi drives. I need to get a better look at 
>> the messages, but cannot find them in the logs in /var/log. Is there 
>> another place where bootup messages are recorded?
>>
>> Thanks,
>>
>> Tom Arnall
>> north spit, ca
>>  
>>
> man dmesg
> ?
> hth, Chuck

In addition to what this man page tells you, see if you have a file 
called /var/log/dmesg . Many (all?) distros these days dump the contents 
of the dmesg buffer here during boot/init ... handy because dmesg 
accesses a ring buffer, and later messages may have overwritten the 
boot-time ones you want to see.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
