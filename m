From: chuck gelm <chuck@gelm.net>
Subject: Re: Mount the SD card formatted using the DIGITAL CAMREA on Linux
 box but HOW?
Date: Mon, 08 Aug 2005 16:45:37 -0400
Message-ID: <42F7C471.8000703@gelm.net>
References: <C349E772C72290419567CFD84C26E0170426F0@mail.esn.co.in>
Reply-To: chuck@gelm.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <C349E772C72290419567CFD84C26E0170426F0@mail.esn.co.in>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Mukund JB." <mukundjb@esntechnologies.co.in>
Cc: linux-newbie@vger.kernel.org

Mukund JB. wrote:
> Dear all,
> 
> I have an SD card problem that mounts when formatted on windows but
> fails when formatted on camera as you all know.
> 
> Now, I an able mount the SD card formatted using the DIGITAL CAMREA on
> Linux box using the windows formatted SD cards first 512 bytes.

  Uh, which is it?
"formatted using the DIGITAL CAMREA"
  or
"windows formatted SD cards"

  Is the SD card formatted by the camera or by windows?

What is the result of "fdisk -l" of this SD card?

I recall that you are using 'sfdisk' and that it reported an error
in the partitioning scheme of that SD card.

Of less significance:  How did the partitioning get corrupted?
Did it happen after using 'sfdisk' to modify the SD card's partitions?
If yes, perhaps using 'sfdisk' is not the appropriate application
to modify the SD card's partitions.

  I am guessing that you may need to use a partitioning application
to restore the SD card to something that the camera will recognize.
I fear that the application to accomplish this is not 'sfdisk'.

HTH, Chuck



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
