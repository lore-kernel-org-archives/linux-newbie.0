From: Rick Brown <rick.brown.3@gmail.com>
Subject: 2 PCI addresses for the PCI-PCI bridges?
Date: Wed, 4 Nov 2009 09:45:05 +0530
Message-ID: <7783925d0911032015m2001729dl6d6e33ad98ce063a@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=WPw6heJvbXUBT/DUe1yec/BBkWD8XnPIIGboJUgj4NY=;
        b=vB9hLLEoJbHAge2ShtMMmz4/6sTqxLsk0QTezQms+MH1Z+BO/YX6/XM/Lw+t5GteK3
         /aM2WHTNgXEfsxKh1n9EXlG23CLr+zX0Aft1/1GtNKJadkDeyY5km2vc4/4doJkCm5UA
         FTylM4KsqWIicMeZkqmE6yy6EWwzNGYS66VgM=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

AFAIK the PCI-PCI bridges are visible on two PCI buses (primary bus
and secondary bus). Hence there ought to be two PCI addresses for the
device - A.x.y and B.x.y, where A and B are primary and secondary bus
numbers. Is this right?

Thanks,

Rick
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
