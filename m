From: Andrey Utkin <andrey.krieger.utkin@gmail.com>
Subject: [RFC] Add a feature to list which processes use (hold a ref to)
 kernel module
Date: Fri, 20 Jun 2014 12:42:44 +0300
Message-ID: <CANZNk8342+CihkQWdtpo04UAozGi0mw1kQpSt_fOmNpYcz6CPg@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=wG2sRDR9F88PEeE0gC/CSfHyQAj0USd12mE7Ag2JxbA=;
        b=BLB+7QEmHwDyMfuf8Tfq9MR9BBrxxrOeC6rGEdE1M/dBKZWa9dA7vBpiP3AJvxAWLh
         4QF7W/4JuriZr3wjoSYwTOTJnTPK/gDRMHgIiqGeffCEcoNZfCgxTAj72WdnP1qPeckI
         KN/FRgit7+ZLBTk2QujNSJkI3FLAolD+F8COJXZeTqTucVhoeQESuiDSb06eTiPrq3Dg
         wI3fnwqAH29xpsys1sqIlz/cRbuUp4w01swPyTTzRxoVljgWMN21yCZ3FKsOR6P9ftER
         UHky0nWM/EILGdh42zBwKRIeVcij0jLzJCtHx6oIMzA+KNdNEomfW5D+bCPQLbPfVmQk
         UaTQ==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

There are smart answers around for the question "how to see which
processes use module and prohibid rmmod from working", like this one:
http://stackoverflow.com/a/15494206
But there is no easy way to check it "just in time", i.e. you have no
special debug settings set up, and you just want to know which
processes make module's refcnt positive.

Would such feature be considered useful? If yes, then also
guidance/mentorship would be appreciated (i am not experienced in
kernel development).

-- 
Andrey Utkin
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
