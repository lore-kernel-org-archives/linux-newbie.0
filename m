From: Karthik.Vishwanath.Adv03@Alum.Dartmouth.ORG (Karthik Vishwanath Adv03)
Subject: Re: accessing email via POP3
Date: 01 Dec 2004 11:41:27 EST
Message-ID: <33117736@newdoc.Dartmouth.ORG>
Reply-To: karthikv@Alum.Dartmouth.ORG
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks for all responses -- Ray, I had removed a couple of
comments from the pasted .fetchmailrc in the email composer.
Hence the discrepancy about line number errors. :-?

Following Amin's advice I tried to run fetchmail from the
cmd-line and I could'nt authenticate myself (I am 100% sure
about keying in the correct passwd):

$ fetchmail --keep --username "karthikv" newdoc.dartmouth.org
Enter password for karthikv@newdoc.dartmouth.org: 
fetchmail: Authorization failure on
karthikv@newdoc.dartmouth.org
fetchmail: Query status=3 (AUTHFAIL)



What is going on here? Please advice on how to proceed next. 



Thanks,

-K
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
