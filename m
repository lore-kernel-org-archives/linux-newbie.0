From: Sri Ram Vemulpali <sri.ram.gmu06@gmail.com>
Subject: Question on syslogd and syslog
Date: Tue, 28 Jun 2011 14:11:59 -0400
Message-ID: <BANLkTin_Yo+wnwWyMFoG3Nv5SSzJj8J1_w@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=LQegyQWKJ0XAUtMxrNGOWuj46kjZmCBVzwZGDelLfXg=;
        b=nBEG0Gf3P7q4xiZua6xk91Mxos9XLUSxmeyZwJVhs/WnhMNILjKUrgweP500UYyVuh
         VafQIWsD8GQ6r9DSuQPkgw7nRhtcmicoZXq6wqEnsuCROxuDzHaILj5WkR/aOTRcizTX
         fAyVxb+NCNN+hUMFhdgVVJxw47nUk8mIEZEqQ=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-kernel-mail <linux-kernel@vger.kernel.org>, linux-newbie@vger.kernel.org

Hello All,

    I am looking to modify number of facilities available in syslog so
that for my application I can have much more array of them at disposal
of my need. So currently only LOG_LOCAL0 - LOG_LOCAL7 are defined for
user, what if I want to extend them, is there a way I can extend them.
Or should I go ahead and modify the source code of syslog. Can any
please point me in right direction and where can I get syslogd and
syslog source code. Thanks in advance.

-- 
Regards,
Sri.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
