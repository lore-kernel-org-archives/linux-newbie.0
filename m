From: manish honap <manish_honap_vit@yahoo.co.in>
Subject: Question about interrupts
Date: Mon, 1 Aug 2011 17:48:58 +0530 (IST)
Message-ID: <1312201138.97857.YahooMailRC@web95803.mail.in.yahoo.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 8BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.co.in; s=s1024; t=1312201138; bh=IAtO5kpbsDtLStWRInp/eBe0WxwOUHrQl+EtBo8rZ6c=; h=X-YMail-OSG:Received:X-Mailer:Message-ID:Date:From:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding; b=qmcbRXCE2k4ssgqLN6m4gb+8KVUNFaGS51wr5OgxF8Noy/2ZZ9TUWSN98yyvqgdHkX/L6vzmkqxaeYrycA3ri67a9e/VQMOSwBTOgdWgeWyEwGmFSJvZPQmVn16rfHVcvbs2eeqqogeWXsr/43Y6/GHsxnkjSW98cnJkiMk7w/s=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org



Interrupt gates are set in linux as 

set_intr_gate(i, interrupt[i-FIRST_EXTERNAL_VECTOR]);
                           ^
                           but the 'interrupt' is declared as 

extern void (*__initconst interrupt[NR_VECTORS-FIRST_EXTERNAL_VECTOR])(void);

can anyone possibly tell when are these enteries filled with valid pointers ???

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
