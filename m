From: walter@psybernet.co.nz
Subject: Re: USB device installation
Date: Sun, 21 Apr 2002 12:42:46 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <E16zGor-00028V-00@smtp4.ihug.co.nz>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Tom Beer <mailings@analogon.com>
Cc: linux-newbie@vger.kernel.org

 In Re: USB device installation, on Sat, 20 Apr 2002 02:17, 
 Tom Beer wrote:

> You should try to track down which modules are needed for the
> smartcard drive. A quick web search leaded to no results (for
> me). The usb modules you installed are for a mouse and a
> keyboard, as far as I'm concerned.

Hmmm... I cant find a thing, not even to upgrade it for XP.  
However i wonder if i need it?

It thought the modules i had, especially usb-storage, did it. I have been
trawling around for instructions and it seems many people get things going with
just this module. But hey, I am a newbie and have no idea.

But I have the idea that usb-storage should have created the device 
in dev/  and it did not.  

Or should i link the sda1 (which i have now made to ... something 
like with my dvd drive:

dvd -> /dev/scd0  

it in turn is linked thus:

scd0 -> scsi/host0/bus0/target0/lun0/cd

Which makes me recall that the sm card is a pseudo scsi card...

There is also a file n that directory called generic

Could that be it?  Something it needs to be linked to.  ??


Walter

-- 
Walter Logeman
Psychotherapist
http://www.psybernet.co.n



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
