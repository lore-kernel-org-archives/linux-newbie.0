From: "zhangsong" <happynodyandhappyyogo@gmail.com>
Subject: Why does he write such code?
Date: Mon, 19 Jan 2009 12:58:49 +0800
Message-ID: <497407bc.0e0d6e0a.1899.7020@mx.google.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:from:to:subject
         :date:mime-version:content-type:content-transfer-encoding:x-mailer
         :thread-index:x-mimeole;
        bh=zWRI+sXwaTYNQqNhXU8/7dTtnMb3s7/++bM0QFyfwcA=;
        b=M7yAZah2qIOb9r4Ypgv3PBZYCV1MOU39HzoMPXDyYfoJPpGHljDJ95rLLk17wtIehd
         q6tccqLIPatR+sUDwoNBMaKpLb0rkeRuVYy/tk/WlT1yqrT6khYHLVjf66CQXW0fM1fk
         4HZhKYbmqsKlATmOC1Lut8ksIQLH3ZSvD9NvY=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-2022-jp"
To: linux-newbie@vger.kernel.org

Hello all,=20

I read linux-2.4 and found a line of confused code:

In kernel/sched.c:
      =20
     void do_timer(struct pt_regs * regs)
     {
=A1=A1=A1=A1	   (*(unsigned long *)&jiffies)++; /* confused code */
=A1=A1=A1=A1=A1=A1=A1=A1=A1=AD
     }

1. Why not to use something link atomic_inc insead of the above code?
2. Can the GCC optimize the above code to jiffies++ ?

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
