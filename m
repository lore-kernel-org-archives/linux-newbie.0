From: Rick Brown <rick.brown.3@gmail.com>
Subject: 32 bit processors / 64 bit processors
Date: Wed, 21 Oct 2009 08:32:56 +0530
Message-ID: <7783925d0910202002ubcd5328nd8c82bb11e5f84ea@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=VLHIb5SKkIl4tS3j8iiQpl0DTLQz1fjALge+P1qBHok=;
        b=K1upNAQGmEMWF1+Alf3fWjFvvmgYxOM3kVlYUVVELZu+lAuMRiBJivm3Jg5qy9JvRj
         5y4oghPYv+mJpGNGrnRWaW4nBMYcWEX4R3RqOxHiqQ078UudTS6bPs5iNsz9xgsmP/we
         fnrsdCi70TbglcUAJus8X2fsustj4/Ha+Fw1U=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

Hi,

Firstly, I'm trying to understand what exactly characterizes a
procesor or an operating system as 32bit / 64 bit. I've read that it
means the "native word size" of a machine. But what exactly is that?
Register size? Address bus size? Anything else?

Secondly, I'm trying to understand what exactly does a sizeof(int)
depend on when we say it is "platform specific". Is it dependent of
compiler being 32bit / 64 bit? Or the OS being 32bit / 64 bit? Or the
processor being 32 / 64 bit?

Lastly, How are "sizes" of compiler / OS / processor inter related?
Here is my understanding. A 32 bit processor can only be running a 32
bit OS. A 64 bit processor may run a 32 or a 64 bit OS. A 32 bit
compiler genrates code only to be run on a 32 bit OS; ditto for 64
bit. Is this right?

TIA,

Rick
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
