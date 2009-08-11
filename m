From: "B.Vinai Kumar" <vinaibangala2001@gmail.com>
Subject: How to get the address of the page structure from the given virtual 
	address?
Date: Tue, 11 Aug 2009 19:40:29 +0530
Message-ID: <f74c922b0908110710o429dfaefi2f23096daae12ed6@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type:content-transfer-encoding;
        bh=PvsdC7awwNRYM/W7XB2e+eBUXXSnITwIF0+ulnrrOwI=;
        b=DlS5eeJq4UNGe+6qkIXuDD/6isysVEmNK4MvsmnMIaaccbCdPzRPCqIkJpRAj0W7lZ
         j+iS8iUmaW4fNEnXV2ZCNCrVqypAcA8GnCvIK9QfVVivBRbWWcTvcb0sgPhyrAdAvAno
         QjFc6Ad7D4tGyxt5p+lO+vZ1dvvfzLnY7dqpM=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi List,

1) I allocated 8 pages using alloc_pages(GFP_KERNEL, 3). This function
returns the pointer to the first page's page structure.
How can I get the page structure address of the remaining 7 pages?

2) There is a function page_address() which takes the page structure
as an argument and returns the virtual address of the
page that is pointed by that page structure. Is there any method which
retrives the address of the page structure?

Thanks,
Vinai
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
