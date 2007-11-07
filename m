From: "Antino Kim" <antinokim@gmail.com>
Subject: When does bottom half get to run?
Date: Wed, 7 Nov 2007 15:13:52 -0400
Message-ID: <f8b4363d0711071113j746b1663t496237c075e4ddfd@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        bh=Kyiff2T6o9H6fuMAqUTTOMOlpUJOECm+eFa/OKuksgA=;
        b=tvvLG/uyzo/c9lOz1cPm8y+pDD98ShddnNooxDj8+jmDZIhprDJDmzSk8wW3YAOUTkkRxQqlfm2zrdDXdGN3OvbpN97DMZRVUdjv1LUEnclUBFeT3Vicb/OOtyLp/wypG15VeMR0CdpLF87nIKhiu8HLA7dEUEVN+E/wX6mF/GE=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hello all,

I was reading into top/bottom half handlers of interrupt processing,
and I couldn't find an answer to my question;

when does bottom half get to run?

Actually, more specific question would be, can a task (any process...)
be running when bottom half is not empty ( i.e., there are works to be
done on be half some interrupts that happened)?
Or, does bottom half handler have priority over all tasks (meaning
that all bottom half work has to be completed before a scheduler gets
to run one of the ready processes)?

Your feedback would be appreciated. Thank you.

-- 
For The Best,
Antino Kim
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
