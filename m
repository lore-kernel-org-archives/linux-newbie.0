From: "Rick Brown" <rick.brown.3@gmail.com>
Subject: query related to different architectures
Date: Tue, 20 Mar 2007 17:58:11 +0530
Message-ID: <7783925d0703200528l70b534b6r69abfcba32f3a41a@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=QW878/ANu38Fqdht85W/+E8A/NwtEH6gfh/2DKdzXsx1cKD+D6ugUTrmG+OZKkjm0hkKn3EZi/2AlTMnIr+2ks7zHUeME2+oY5lKSitZurWzuhd3LygDK8dveeNa4rO67eyZ4TRaVOAA8jGKd5fq4fxHDueHLn6G01eXOGEpkwM=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

Hi,

Please pardon me for this stupid question, but this is regarding a
confusion I have developed regarding the architectures as listed in
arch/ directory:

1) i386 - I understand this is the most commonly used intel IA32
architecture to which all the pentiums, xeons, and 386, 486 etc
belong. It also covers the AMD (and other manufacturers') x86 based
processors. Is this right?

2) ia64 - This is for the intel 64 bit processors (Itanium).
Additionaly, it also covers AMD and other manufacturers' 64 bit
processors. Correct?

3) x86_64 - What is this?

Secondly, when we talk of 32/64 bit processor, we are talking about
the data bus width, right? The same holds when we talk about Operating
systems, right? So the size of address bus does not matter?

TIA,

Rick
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
