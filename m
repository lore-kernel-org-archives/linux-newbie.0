From: ishare <june.tune.sea@gmail.com>
Subject: how does ld.so transfer execution to executable section ?
Date: Sat, 6 Apr 2013 21:46:47 +0800
Message-ID: <20130406134646.GA8866@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=Rzf+tT8U70Jsf0lLJNozG9TSRqkB/8tWfxI/HI9pZuY=;
        b=dD2vyYzNOYB8sCsJCWmTAeEDIezTkcBZw4NxRsZQvUkMb0axSc/VvwD/nJJA7WbV5F
         5ir23C2H4rC9hQRTgs6Ami1Hrue9Oh4NFImLa/IlXTGVqBLI3QAY0oASrIEzbWSR+Qet
         of6dmGLlO72lmdSxyaZJ4SrA1PwGNsc2STOp/jTQOGf+4MqQSSufhUU+3NfQugMlxkHG
         cjDD/1M6g3bRB+C1XMOzu03bqRxcpzfdh6IxKi4aHGmvVhGd/LVRqSotywDdAZJMfFU4
         Ny5MkpkJzA9rXcNkhCQcN6r8tkoEDBI6aLfpiia71wLq+mWLw6DEIurGN2XwOiuHleZQ
         Nkcg==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org


  At boot stage ,the process 1 will execute '/bin/sh' . as it needs ld.so to help loading other .so ,
  it loads ld.so into memory and execute ld.so first .

  My question is when and how does ld.so transfer its execution to code of /bin/sh ?

  Thanks!
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
