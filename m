From: chuck gelm <chuck@gelm.net>
Subject: Re: Noflushd usage
Date: Thu, 01 Apr 2004 11:03:23 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <406C3D4B.9070502@gelm.net>
References: <406BA04F.3060503@hopper.net> <1080832995.4645.0.camel@localhost.localdomain>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1080832995.4645.0.camel@localhost.localdomain>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Matthew Frederico <matt@ultrize.com>
Cc: Joshua Rogers <joshuarogers@hopper.net>, linux-newbie@vger.kernel.org

Matthew Frederico wrote:

>On Wed, 2004-03-31 at 22:53, Joshua Rogers wrote:
>  
>
>>Slightly curious here.  I have fairly new computer here that I got from 
>>walmart.com maybe 4 months ago.  I decided to install linux and windows 
>>on  it.  Ok.  I installed a 100Gb harddrive into the computer that has 
>>all my data on it.  And the drive sounds like a jet plane.
>>
>>How can I (or can I not) make noflushd turn off the second hard drive 
>>after about 15 minutes?
>>    
>>
>
>I believe "hdparm" is the command you are looking for.
>
>something like:
>
>"hdparm -s 30 /dev/hdb"
>
I think that argument is uppercase, i.e.:

hdparm -S 240 /dev/hdb

;-)
Chuck
p.s. man hdparm for details.


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
