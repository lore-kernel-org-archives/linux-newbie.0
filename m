From: Philip Cohen <hpypenguin.lists@gmail.com>
Subject: Re: Network install fails at TFTP load on client pc
Date: Sun, 17 Aug 2008 17:18:47 -0700
Message-ID: <48A8BFE7.7070900@gmail.com>
References: <260800.64041.qm@web59716.mail.ac4.yahoo.com> <Pine.LNX.4.64.0808121443100.12720@xena.cft.ca.us>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:cc:subject:references:in-reply-to
         :content-type:content-transfer-encoding;
        bh=kgIOyEvIh39JSR4jCjqMFcoLvh/uNkXxp54UcaAPyrY=;
        b=t6gU44R0AT1iw/lfferJnsgS94iLz43BlfhKWvvJddM1AqQBmdkATS2SOblCIhtpDM
         vBY8iV+qpbWxPzLzlANKRZCEr6d3H+qiGGQbtdWMnBIB8TlQI1K7eGaxRnmBWAMflaQ2
         APexrnBqLup/hCtIeOb7r8pkoi8mmhGZ4wBtE=
In-Reply-To: <Pine.LNX.4.64.0808121443100.12720@xena.cft.ca.us>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Jim Carter <jimc@math.ucla.edu>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>

I now get a message from the syslog that tells me that my tftp server 
can not run because the address is already in use.Hopefully this is the 
last barrier here. I run in.tftpd as an option in xinetd. The options 
are configured the same way as recommended on the Ubuntu support website.

- Phil C
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
