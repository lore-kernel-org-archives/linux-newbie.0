From: Walter Logeman <walter@psybernet.co.nz>
Subject: Re: USB device installation
Date: Mon, 22 Apr 2002 03:36:43 +1200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20020421153714.ACAA052721@psybernet.co.nz>
References: <20020417221621.7E4A052728@psybernet.co.nz> <20020418234908.A06CE5272A@psybernet.co.nz> <00a101c1e7ac$fae6b7a0$0901a8c0@system>
Reply-To: walter@psybernet.co.nz
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <00a101c1e7ac$fae6b7a0$0901a8c0@system>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
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

It thought the modules i had esp usb-storage did it.  I have been 
trawling around for instructions and it seems many people get 
things going with just this module.  But hey, I am a newbie and 
have no idea.

But I have the idea that usb-storage should have created the device 
in dev/  and it did not.  

Or should i link the sda1 (which i have now made to ... something 
like with my dvd drive:

dvd -> /dev/scd0  

Which makes me think the sm card is a pseudo scsi card... it in 
turn is linked thus:

scd0 -> scsi/host0/bus0/target0/lun0/cd

There is also a file n that directory called generic

Could that be it?


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
