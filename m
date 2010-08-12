From: ratheesh k <ratheesh.ksz@gmail.com>
Subject: Re: preempt_disable query
Date: Thu, 12 Aug 2010 11:02:53 +0530
Message-ID: <AANLkTi=11b90aUT95OT1E75-p2skL4CjOsk=u0tFDkdo@mail.gmail.com>
References: <AANLkTi=KMPazeF3b6tkYT-mBmmmk371TVhC6Rjvx1+Jp@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:in-reply-to
         :references:date:message-id:subject:from:to:cc:content-type;
        bh=QQwjazntmZdoyqcckTbQdHUiTrzAMtx7jucivXOpa8g=;
        b=ojl2bqyaOpSq/SZr/RGh0yAB6LcXwmbz/gUJ4dBfifZdgCrQXAVsSxQfbMgGMkO2S5
         O26u+pvV4hmh+9BLhnelk52YXLx/eKlPGjv3RGIvJNRh6YNq/ZXADBeK20r4pA9kn4++
         tXOQugVK4vyuEX2nHju/GsyXb5NirfBkF60wY=
In-Reply-To: <AANLkTi=KMPazeF3b6tkYT-mBmmmk371TVhC6Rjvx1+Jp@mail.gmail.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Rick Brown <rick.brown.3@gmail.com>
Cc: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org, rajatjain@juniper.net

On Wed, Aug 11, 2010 at 11:03 PM, Rick Brown <rick.brown.3@gmail.com> wrote:

> 1) Is it allowable to sleep (while in process context) after a call to
> preempt_disable()?
Sleeping in the kernel with preemption disabled is considered to be a
bug.  So the scheduler will print an error and a stack dump when this
happens.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
