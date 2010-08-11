From: Rick Brown <rick.brown.3@gmail.com>
Subject: preempt_disable query
Date: Wed, 11 Aug 2010 23:03:45 +0530
Message-ID: <AANLkTi=KMPazeF3b6tkYT-mBmmmk371TVhC6Rjvx1+Jp@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:received:date:message-id
         :subject:from:to:cc:content-type;
        bh=Fa2CkHA6hRleLg0L9nSTCUHX5WDxAtmHsyy1NFR+0FY=;
        b=ZTrJ0fZf9i17nN4K/v8bnFamcjH6iD8InTdghLLwYNw4VUlLwwfdRuljT8t1rNA9gW
         PvfFM1M+ZKH+SA/is3lboW8V6yQMVeQf4aPPiqO+/AeMs+/60DBLfkq8IWLYRH2KHPkA
         mLLRC7wjxTO+Mryv/9ivwIlKqUQCwmKX5VyFc=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org
Cc: rajatjain@juniper.net

Hi,

1) Is it allowable to sleep (while in process context) after a call to
preempt_disable()?

2) Would a call to preempt_disable() disable preemption only on the
local processor or on all the processors?

TIA,

Rick
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
