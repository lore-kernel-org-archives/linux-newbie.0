From: Clemens Eisserer <linuxhippy@gmail.com>
Subject: How to access block-devices from kernel-space?
Date: Thu, 5 Mar 2015 13:07:58 +0100
Message-ID: <CAFvQSYRs31dBD2G-A-BPSmtsdRe2qw3u8Cj-D7u0okzuV6huKg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=PU+tjn6I6IGYwDpUI7yvdMne2+1jYQKnr1GrQuz/2i4=;
        b=RbomRash6Js1ALsHSiJ2CUTuYOosxmJ1shg5i0ItUldLQrdLVbYa+pL1h7GDV7wP6x
         w/o1B+14PAMth5kzIXlj8EP9NnPXXIeOWptRYbWT+K3RKZKrbZAOzBnxLb0hm6TCXu9f
         gXvZfnAGZdw4DOgv9cuLiJ4z4evQwiv0MsM2jeV68nGi5RIzY6qCSqJRnN11Q4bYAzYT
         T+Og+zKlmNRK2yCkijW0MzDSYJG1df0CBSB/bOZ3Gav51zGkHOVLWq19i3h4eZ/BdegK
         60Cm0lryFkFzFeIohEIChcmW4p4E6kwywae99VDNIxOxQ75vO29foN/5jFJGFLAtPmd/
         pYjw==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

I am currently working on a block-device driver which implements a
logical block device on top of a real block device.
There are several examples showing how to write a block device driver
and that seems straight-forward, however accessing the backing block
device is causing me headache.
I found the bio API to be quite complex for what I am trying to do -
the old "buffer-head" API on the other hand seems to be almost
undocumented.

Is there another/simpler way to read/write block-devices in a
synchronous manner?
What I am looking is something like the read/write syscall
functionality, however I would like to avoid using the syscall-code
for overhead reasons.

Thank you in advance, Clemens
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
