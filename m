From: Drew <drew.kay@gmail.com>
Subject: Re: Mount two device on the same directory
Date: Fri, 29 Mar 2013 19:04:58 -0700
Message-ID: <CACJz6QtJQRx++qFHnV3KaqWsJWg3PRAreaXJcHkRK8LXN0Sjpg@mail.gmail.com>
References: <20130327131703.GA2841@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:mime-version:in-reply-to:references:from:date:message-id
         :subject:to:cc:content-type;
        bh=9KzA8uwv5l74LZTWZFSwatUOHYIUF/znKYmQNVo0spo=;
        b=fgnfu2stppFGfFghSZDk2/bCMfqzGdgainIUGoHL0YaXR53XTae0FxUNMmDjSHjbPd
         3FPy1TBNNTiV+ZrQHfYyMpcxfYnjt98Xv97mNIAs0CCUyVuc09Dm++YdiwPJtlNgs1XL
         OnpHEnZ+ANMdwLxuV/avNf1kKqHE+XSMu3ItDG2xzcy+kqasWZXuPhHHO6h5Ij7WNRXj
         vP3aMltJ1b/s/QNgxQMMxqxfb0YGJumbvGK0Q0wGPVZcKQVx9jX8Bl2Q27Iv0liSIHOe
         jO6jVCqyM7hQPQjJb0pnbhp3o3mLgwJ5WuuvzOSibyttCaeB02zdDg7KaMhLsEf4QkBN
         bjwA==
In-Reply-To: <20130327131703.GA2841@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ishare <june.tune.sea@gmail.com>
Cc: linux-newbie@vger.kernel.org

>   then, if I type " ls / " command , Are all files in the two device show up to me?

My understanding is that whichever filesystem was mounted last, that
will be the one responding to ls.

For example, when you mount a usb stick to /mnt/mydevice, the
directory contents are replaced with the contenst of the usb stick you
mounted.

To see what I mean:

mkdir /mnt/mydrive
touch /mnt/mydrive/somefile
ls /mnt/mydrive/
mount /dev/(whatever the device is) /mnt/mydrive
ls /mnt/mydrive/

somefile should appear in the listing before mount but not after mounting.


-- 
Drew

"Nothing in life is to be feared. It is only to be understood."
--Marie Curie

"This started out as a hobby and spun horribly out of control."
-Unknown
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
