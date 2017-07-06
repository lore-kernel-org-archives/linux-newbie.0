From: Massimo Sala <massimo.sala.71@gmail.com>
Subject: new sysctl tunable knob for tcpip
Date: Thu, 6 Jul 2017 09:10:33 +0200
Message-ID: <CAKv20-VPxy35qcQ+bjv8oXDLxPeF8wtkCqLc4CAOumhMuY_30Q@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=E3FapYPtmszdsaygoDJQYbr9DXrgvaITjRLqJjCDrNo=;
        b=GHvoQCtBayu5sKFtrazubVXghbLSqc+ACpXYJX4kQhE2yylxTU/71+EdyS9y3Ng9Rf
         dCddZNegdjqRky7H4kXMEK+PAdnifSCBaE9NGBhqBubQNuSplOiKz+N1jEtXyMkJhli7
         61lbTJV4pDGfrdcd+slsW0GPHdIswfM75oWqC9FD6ZEusIQ/z1KqcJvuGs1lW6BPGzTj
         Gu7HDReyMK8f9CocagpaxcmEw/M+YYtvUcaIr4i6Rb7JwTYJZCDQndbUXf6Q590g9TSW
         YoxfXfu0LYTHRw3tvQZdZoGfTxnS1CUy8xrX/rCyyzBz2CTsaj3GjUfZ4FfO4L8ZhSSW
         ofMw==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie <linux-newbie@vger.kernel.org>

I have an idea about a new sysctl knob. It is under net.ipv4.

q1) which is the right kernel m-list to discuss it ?

2) any suggestion how to gain the critical mass of consensus ?

3) at first : is it mandatory to code the patch ?
optional but better for 2) ?

best regards, Sala
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
