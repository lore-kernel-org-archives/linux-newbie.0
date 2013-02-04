From: horseriver <horserivers@gmail.com>
Subject: Re: Unable to mount root fs on unknown block(0,0)
Date: Tue, 5 Feb 2013 06:09:07 +0800
Message-ID: <20130204220907.GF2553@debian.localdomain>
References: <20130204053250.GB2612@debian.localdomain>
 <CAHnt0GXiOf6DJ+Q879Ke=iiM3utpkLLxehDmmjBbMkmksj7CVQ@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=p07iUnCVLgdn7YWlZMXuhe3HjuRN/GQjc0fGmcYvudg=;
        b=o4et7p8YEftwNF5hjlLioz7xLStez8z4mNhrRFT8dRKGYiev4zn6XXOB2Oyd0bLupS
         ydG1rDbVlC6VMlh9lw3kKA2uo1p8HXZv1KVGQHcTv8wGVXXNu3R+fzqqwV3hEOIWYjqS
         SrSWKEiWhdvP6imoaJZBkNQ7mBByWXHN4LP8jV9ISVHl4RFKTiH1ec38UTby/dgeLbAH
         LZ1do882BOTb8jeLUA6UQg6a2qHlBn+lnYTFW06nv+FafCUO9ibo+DnT2vLa9rB1ReVg
         Jza6xRhqW7U4wviRwToZPm18m6LJnozgNsCua38LuHHWzWzErz7J335Hv8P81Y08GB8T
         0LRQ==
Content-Disposition: inline
In-Reply-To: <CAHnt0GXiOf6DJ+Q879Ke=iiM3utpkLLxehDmmjBbMkmksj7CVQ@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Peter Teoh <htmldeveloper@gmail.com>
Cc: linux-newbie@vger.kernel.org

hi:)

  I got the resaon ,it could be my bochs's bug,after I update bochs,it work well.

  Now grub can load initrd.img,but another obstruction appear:
   
      /bin/sh can not access tty ,job controll turned off

  Does tty need surpport from other hard device ?

thanks!
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
