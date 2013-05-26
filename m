From: Jimmy Pan <dspjmt@gmail.com>
Subject: How is different version of kernel developped
Date: Sun, 26 May 2013 12:41:47 +0800
Message-ID: <20130526044147.GB8627@sl63.deity>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yy0YwMmVyvauVkduHOIu6Q77vnTXf9XK6TbkbFnhZLg=;
        b=0uAmLDZMDlvYNKIe6qHmKEH8lC74a0VYii5yllaqKSnVU3col3YBtEwAk64/OkxWlf
         onM0rYAgpBdAW5PSAYLZxduvdcKyKH1NRxpUAZajwG/D7XDqN/7Fh2glzEiNsCsE2tZt
         gu03kWkeCRdtPiVwGXcHAOkuywuBd8T1mxKjmLDDEg1u5tw0GOXU1fuiHnY0HGmD54oI
         uiRKSb/Hq9piC2EAwTX0svaoFYtp0El488YpIGnG3IdxwqpHQPATNnf/rgIYMXRQCQbR
         EatsbZHc7/YABafgHzOeg44ESV8f4ppElrvagBSfONPKF9OHCdjDM6iUtKryFGAHXQTZ
         ZdWA==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, kernelnewbies@kernelnewbies.org

Hi,
I am wondering how different version of kernel is discussed on kernel mailing list.
We can see that, the latest kernel stable is 3.9.4, and the mainline is 3.10-rc2 and there is an EOF say 3.8.13 and a longterm 3.4.47, and a linux-next
I have several questions:
1.When we see a patch on linux kernel mailing list, which kernel version is it based on?(seems never exsists a description in the patch)
2.What should we do if we whant to send a patch for different kernel version?
3.If a 3.x-rc turn out to be stable, is it going to be 3.x.1?
4.There is no 3.10 in linus' tree, what exactly is linus' tree?
5.Is linux-next a preview of the next mainline version? In this case 3.10-rc3

Thanks everybody for answering.

-- 

Best regards,
Jimmy Pan

Email: dspjmt@gmail.com
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
