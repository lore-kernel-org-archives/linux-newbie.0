From: Ashoka K <ashok.vinu@gmail.com>
Subject: Any issue to be considered if ethernet send buffer is modified
Date: Fri, 30 Aug 2013 13:51:14 +0530
Message-ID: <CALJd4cb9aZF=jzbYiAf518KW-hS+QR4u0JDHefmR5Q4DipOuPw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-rt-users-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=l9st3EbtTXR5ufWk/6M4wXeMEiUH4jJtkIth460TJJk=;
        b=KbKqFcJv287uOGpIYQuMOxnpiE0SzpB8FNmgOmK7f/6kYQgCZdFaimuIChXBobUP3i
         3uEXVhKJzT/5FIDIQZWzpbY5/pD24EeTi2TNImajFnQOUvLEiGpPAuonvHv7xFs2hy+8
         tM9U3NRwoi1pE7px89GeFgUn4Kh6nMMUQBVx8TxaMoMHj1KVJWqPY3tBJaSkEzBTUu/b
         Ky4XZ4UEOxRvsDHD+sHUmCf2zqroDPHpgxWsMNDTkrBpnBfN7+6de4SW1r1skG05IIt2
         YZrqPVogBBKm6y3YppF67jG5OOexwWjxKGOPN+onvlfNHFAYF2mVq75vy4418EhL5erd
         ijfw==
Sender: linux-rt-users-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, Linux RT Users <linux-rt-users@vger.kernel.org>

Hi,

I use embedded system with 2.6.33, Preempt patch. To reduce the
latency of sending data by our application, the ethernet send buffer
is modified with setsockopt().

Before modification the send buffer size by default was shown as 16384 bytes.
But on proc system value shown is different, both default and max are same:
/proc/sys/net/core/wmem_default = 108544

Eventhough the above value is not modified, why the default is shown
as 16384 instead 108544. Did kernel change these values during sending
traffic ?

If send buffer is set by setsockopt(), is this value modified by
kernel during run time?

AK
