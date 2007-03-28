From: "Daniel Rodrick" <daniel.rodrick@gmail.com>
Subject: mmaping device memory into userspace.
Date: Wed, 28 Mar 2007 09:45:52 +0530
Message-ID: <292693080703272115m335f5b0yf071007697aee6aa@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=BK6Ny3q6HEGJfW79axjifbgE2/o9HC6LQXhiPS1guwki06oALss7LHyUzDdRJFR+VVc4kg+d2XKyreVyAngcsHoMQPLgEeCNgeHrvcNaaXMqII81T27cW8AxXNh/EPxHoTO/ZiVnoMe9zcL0zGAyUWn+1cB2OyeMC6NG+SDLu5w=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Linux Newbie <linux-newbie@vger.kernel.org>, Kernel Newbies <kernelnewbies@nl.linux.org>

Hi list,

If we map device memory into user space using mmap(), the user will be
able to do read / write into device using normal memory handling
routines, right?

But as mentioned in LDD3, should appropriate readb() / writeb()
routines be actually used to read / write into device memory?

Thanks,

Dan
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
