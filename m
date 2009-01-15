From: "George Kumar" <grgkumar4@gmail.com>
Subject: difference between proc and sysfs file systems
Date: Thu, 15 Jan 2009 10:11:10 -0800
Message-ID: <5f695cd0901151011s487e0456y7ad002c94846dc84@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=mGlh5EmDi6J9YURX0lvPiO5AzV6pLbThWTVep8VzgZc=;
        b=bFP+j4MykebYDEX7F6XH+wdptVl6UNq2rToyzYBbNol2/KfrfkaLyBObW1NPKFZMli
         u9yYMmiW4PksfDPazhhBSglteJxJSq+P2yUOxUJaIWNKp2e9203ZrxGN1iodwe0i2uW8
         tQFmGyisM5lv+t+/ZXw3QDoM9PyeGQxs1USKU=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Both are pseudo file systems. I am a bit familiar with proc as it is
useful in seeing system info and also change things like ip_forward on
the fly,
but not so familar with sysfs. Why do we need sysfs....what
functionality does it bring that could not be provided by proc.

thanks.
george
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
