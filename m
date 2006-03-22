From: Ray Olszewski <ray@comarre.com>
Subject: Re: skype
Date: Wed, 22 Mar 2006 10:17:09 -0800
Message-ID: <442194A5.9000006@comarre.com>
References: <1143022954.3360.19.camel@localhost.localdomain>	 <1143024288.4016.2.camel@localhost.localdomain> <4420FF2F.1060205@gelm.net> <1143039536.8302.5.camel@localhost.localdomain> <4421817D.6090606@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <4421817D.6090606@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: newbie linux <linux-newbie@vger.kernel.org>

chuck wrote:
> John Woodrow wrote:
> 
>> The mic works fine with a windows system.  There is no scratchy noise
>> when I plug the mic in.  I can hear other people when I use Skype but
>> they can not hear me.
>>
>> Thanks for your time,
>>
>> John
>>  
>>
> Hi, John:
> 
> Good.  Then there is soemthing errant in the configuration.
> What, I don't know.
> :-|
> Chuck

If I've followed this discussion correctly so far, indications are that 
the hardware itself is okay, but that either Skype or kernel sound is 
misconfigured.

Since the mike itself functions with a different system, the next 
question is whether the sound hardware is properly configured in Linux. 
I don't recall that you've told us the details of either hardware or 
software. What sound card (or chipset, if it's onboard the mobo) is 
involved (what does "lspci -v" tell you about it)? What distro and 
kernel are you using ("uname -a") and are you using OSS or ALSA sound? 
If you use modules for sound, what does "lsmod" report about them? (You 
will want to run both lsmod and lspci as root, BTW.)

Does the card work properly when recording through both the line and the 
mike inputs? (Try recording with gramofile, or your recording program of 
choice. Be sure to use either rexima (OSS) or alsasound (ALSA) to set 
the appropriate recording source.)

I've had mobos (using some VIA chipset) on which the sound *seemed* to 
work using OSS with 2.4.x kernels, but on which I actually could only 
play back, not record, until I switched to ALSA. If you don't *know* 
that sound *input* works independent of Skype, I really think you should 
confirm that it does before you go too far down the road of 
Skype-specific troubleshooting.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
