From: docv <docv@sbcglobal.net>
Subject: HD Woes
Date: Thu, 30 May 2002 15:57:37 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3CF69241.4000705@sbcglobal.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Linux, Newbie" <linux-newbie@vger.kernel.org>

Fellow Newbie listers,

I am running a dual boot (RH7.3 & WinME) box. Due to the purchase of a 
new Digital Video Camera and the firewire board to transfer videos, I 
have also had to purchase a new 40Gig 7200RPM HD. For some unknown 
reason, I can not mount any partition from the new 40Gig drive under linux.

I used fdisk (in dos) to format a 15 gig partition1 as my new WinME disk 
and successfully transfered over the WinME to it (I know it was 
successful because I can boot from that partition into WinME).

When I boot into linux and attempt to mount either partition1 (as 
/winME) or the 25gig partition2 (as /website) All I receive is an error 
that /dev/hdb1 (or /dev/hdb2) is not a valid block device.

When I installed the drive, I used a dos based installation program that 
came with the HD. Boot from a floppy included with the drive. I thought 
that was the problem so I booted into a dos session and used fdisk to 
repartition the drive, still to no avail!!

Any ideas on how I can solve this problem?

-- 
Steve
docv@sbcglobal.net

In a world without walls and fences there is no need for windows nor gates.

You can not solve problems with the same level of thinking
that existed when the problems were created.
--Dr. Albert Einstein

Usted no puede solucionar problemas con el nivel del mismo
de manera de pensar tan existido cuando el problemas
fueron creados.
--Dr. Albert Einstein

President/CEO
Consultant's Publishing Services, LLC
http://www.cpsinfo.com

http://www.vaitl.net
===============================
Stephen W. Vaitl, D.C.
Certified Chiropractic Sports Physician
Certified Chiropractic Extremity Practitioner
Assistant Professor, Department of Chiropractic Sciences
Assistant Professor, Department of Diagnosis
Former Director of Rehabilitation Services
Cleveland Chiropractic College - Kansas City
6401 Rockhill Rd.
Kansas City, MO  64131

The opinions expressed, in the original post, are those of the author. 


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
