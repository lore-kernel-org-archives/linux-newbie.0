From: ishare <june.tune.sea@gmail.com>
Subject: init file for boot
Date: Sat, 30 Mar 2013 17:11:13 +0800
Message-ID: <20130330091113.GA6948@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=s7DJpJuPFFFBKNZGGnBNDw0Bmni2kiUJT3siHK/sOhc=;
        b=IqbxXaWjtzw6fsqQfkL2e5y6nXfcvPnQ/3Y7qAn0ig3Z204KAXIXBdronuj4FvoY5A
         blNXsPmkmLbQxoaBx2WwlYbv9Wg5bTmN+AFR4XNTWHtdgqAfWnRipjzjvvOrBohrfxD/
         XCIusB9wfumuofCJHTN14Pi4mmnyl4dYpu8CV9RwTV/YLobign5hAZiGH7uJrduP5R+j
         5EsiZw9DwLt0FjD/gvE7ENwT6biw+WwrwwdT84Fq70K1Zs7nBXOKL0hm5HnO5kTRx21r
         xN8btBEFuE55kCeOwE9hjdeE1aCacpP24bTKhE27wwB8Iygvkk+or5qEqkOBsRcOCGmZ
         FY5g==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


  After kernel mount the real device to "/" , is the initramfs still  usefull ? If so ,it is mounted at which entry?

  At the end stage of boot , kernel will execute a init file , 
  whether this file locates at initramfs address space  *or*  the device mounted at "/" ?

  I feel confused  of  this point .
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
