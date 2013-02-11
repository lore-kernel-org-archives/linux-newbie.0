From: horseriver <horserivers@gmail.com>
Subject: initrd and root device
Date: Mon, 11 Feb 2013 10:11:49 +0800
Message-ID: <20130211021149.GA2923@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=x-received:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=A7fwPBb5kFY+L4crYSPolyZ1T74PfYglj3kn6ir+sU4=;
        b=Px8C4g1cMjcp+MdUAlcCfYwcACQgdJpbK0w5OFtZ1MlcLbqHQ5RDVhYjJ54oqoy5W2
         uScmTG7QLRwkLraEdqJTOYMVKFcvhCi+6wNBlgd3bVStDKNvBeEwY19l/I2CdyfEVoGi
         hiNdcK12Leo+XcxQ65e0XF6XKRfIJaLq2H+KKPpVB/3589a2pCcC+Q2GVSyjg/EC/ceu
         DQA2Vp9lPsI3Vdpf7NQ6Ni9lIgaQuJ7X82mB89r4IOkHpzaCxJ3Xirv6Q1w8T8KD2fjd
         xEjA//3mI3Y/pQWnnOEt+L7nPsy15aknHJR3giRsBUVzta/ufx5vczIP+4hCz4lBTceY
         9CPA==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

hi:)
  
  In initrd.img ,there are some directory and files which is needed at booting time. 
  etc /etc  /dev /sbin and so on .

  After use of initrd , its memory will be free , then ,The root device will be certainly 
  mounted at root directory .

  Does the root device have  files or directories which have the same name with some files in intrd.img ?
  etc /etc /dev /sbin .
  are there duplicatea  of files in initrd.img

thanks!  
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
