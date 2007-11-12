From: "Rajeh kuri" <rajeshkuri@gmail.com>
Subject: kernel module
Date: Mon, 12 Nov 2007 19:29:17 +0530
Message-ID: <c26b6f110711120559l2c9f9be3wb729a3a770b13ffd@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=wXPPTND3inVo3J5GQ2HiAs+TBnHmWApN7x5MDLRqewk=;
        b=llRYokkqqWyzDSrmgO/veZ0pNgXbvz1kJcUm/V30cPpW6vpaVgX9Sc7iMLha2SuThELiiM2cbeZ81NAGSCishxDcfEuDj5zfzuxRvAaNxBK/H8xlc27twHOq06UUkfXXKW0LQ1+0y4tMNri0y2DLGMoHox+CAkiCT5E6AxG7VJg=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi,

Is there any ways to invoke/call the function (kernel module
functions) from compiled base kernel. Well that statement sounds
strange.

I will try to simplify that statement, with problem I faced.
I have written a kernel module but it is of no use till I call one of
its function from kernel, and hence i modified the kernel source to
call this function and then compiled the kernel. Now the problem is
obliviously 'linker cannot resolve the symbol. Because I'm trying to
call the function which is available only after I insert the kernel
module.

Is this a right approach? I'm using the kernel module concept in opposite way.

Any pointers or suggestions will be greatly appreciated.

TIA...

--Regards,
rajesh
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
