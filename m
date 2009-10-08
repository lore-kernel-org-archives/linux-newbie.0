From: Rick Brown <rick.brown.3@gmail.com>
Subject: Changing Kernel 3g / 1g memory split
Date: Thu, 8 Oct 2009 08:08:47 +0530
Message-ID: <7783925d0910071938i360e6ef1w8d1b68900b7c35af@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=xExsBG0TwOFMZL4qRUffaQtaePtONXQUQTJgOQpZF6g=;
        b=OxfonumCseXL1vHS+dmeVuYsyaqkph3Bj362sn4mF0bjWoZoW63tbvMhLumI19Gx5I
         eIgRaVIsQtYK9GFs5z67f2h9iHrSRmxwaOwynUki0fYpEZp9NiTez4vsc9t5K6hyfg8l
         uLhmkuHAm0riB2mL/HfNxYCWrJdtkUcqQ3UwM=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

1) As far as I understand the 3G / 1G split of the kernel is in
virtual address space, and the Highmem / lowmem concept is in physical
address space. So I just want to know that if I change the memory
split (from 3g/1g to 2g/2g), then will my ZONE_NORMAL also be expanded
to be (896M + 1G)?

2) Are there any disadvantages (other than the user applications
having to limit themselves to 2G of memory) of increasing the memory
split to 2G?

3) And finally, in order to complete this change and to ensure my
applications are awrae of it and are doing the needful to restrict
themselves in only 2G, do I also need to make changes in the glibc or
the gcc?

TIA,

Rick
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
