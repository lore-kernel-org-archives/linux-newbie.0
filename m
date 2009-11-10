From: hmthalib <h.thalib@gmail.com>
Subject: Re: Where is MMU enabled?
Date: Tue, 10 Nov 2009 06:28:25 +0530
Message-ID: <4AF8BAB1.6040502@gmail.com>
References: <7783925d0911091002r7ca75de8ia292eaba81e748fe@mail.gmail.com>
Reply-To: hmthalib@gmail.com
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:reply-to
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=PZNebwvMjw9DxQpnkkh6I5tDzJSkowR5K7tbEt11A0o=;
        b=ODZ+CVHbfHGxic2KlzP1Ro8ZIEsBaZrbdO0Q9+pVmkY5eVE29yRUAU+890WROkrJOt
         MDpSZGa85ykPSXet8tDHqtxgIwxggFMaLg+gedw2WfbitgiZOw1WztNeL37OyzhF3kZz
         MhKFdFlHFVZ84/NncDPUHV74lsP2g56O4goXE=
In-Reply-To: <7783925d0911091002r7ca75de8ia292eaba81e748fe@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Rick Brown wrote:
> Hi List,
> 
> I am curious to know where is the MMU turned on in a Linux PPC system
> - is it the u-boot or the linux kernel?


It is Linux. u-boot uses the flat memory system.

  Since enabling of MMU shall be
> the point from where the CPU will have to generate virtual addresses -
> I think it should be somewhere in the kernel. The reason is that all
> the addresses that we give on the u-boot command line are physical
> addresses and not virtual, right (Thus implying MMU is not turned
> on?)?

yes. MMU is not turned on in u-boot

compare the data sheet and head_32.S for powerpc arch to know how the 
MMU is initialized .

> 
> Or is it that kernel always gets the control with MMU on on PPC systems?
> 
> How about other architectures?
> 
> Thanks,
> 
> Rick
> 
> --
> To unsubscribe from this list: send an email with
> "unsubscribe kernelnewbies" to ecartis@nl.linux.org
> Please read the FAQ at http://kernelnewbies.org/FAQ
> 
> 


-- 
Regards,
Mohamed Thalib H
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
