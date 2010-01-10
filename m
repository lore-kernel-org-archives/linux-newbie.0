From: Cyntrox <cyntrox@gmail.com>
Subject: CNet NIC (r8169.o) causes lockup?
Date: Sun, 10 Jan 2010 14:05:24 +0100
Message-ID: <d533ced01001100505o5cae7bedrb93feba44729ba8c@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=7i9Cyk2t6O9mROx8sXQxsCK7HWXaNzUTBOFDbzQ4z/A=;
        b=IlnUW8hVqfff4OPUF85W4vCv+hjcejkC6LxVtzp6ynfZGB7uPbCYvaRe1WBulG20x5
         Bjs0XD7u2XgqHU14EoLhcepq6sVN2uzspLKC9TdwLojyR8cDY9vfZH0qq0PRLtQZGEUh
         Od917PezkG8cY/lhRG8Miy+1a7z+pPpjP6XvA=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, cyntrox@gmail.com

Hello, I am using a CNet ProG-2000s NIC and a 2.4.37.7 kernel.

I apologize if this is not the right place to post this, but it seems
to be related to the kernel - and I had nowhere else to turn to.

Everything works fine as long as I don't insmod r8169, and when I do
it will work for a minute or so. Then I will no longer be able to ping
that card.

After another couple of minute, the server will stop responding
entirely. I have no idea what happens, everything just freezes up. The
only abnormal thing I can see is that /proc/interrupts will always say
that I have 0 NMI's until the card goes down, then it always increases
to 1.

Sometimes I can get it back by doing the following:

ifconfig eth1 down
rmmod 8169
insmod 8169
ifconfig eth1 up

But even then it only works for maybe 10-20 seconds.

My system is based on BasicLinux, but I have compiled the kernel
myself. The .config file can be found at http://pastebin.com/f5c5d73d.
Any help would be appreciated.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
