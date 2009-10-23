From: =?ISO-8859-1?Q?Kevyn=2DAlexandre_Par=E9?= 
	<kevyn.alexandre.pare@gmail.com>
Subject: Write and Submit Your First Kernel Patch
Date: Fri, 23 Oct 2009 14:46:24 -0400
Message-ID: <dc1d0f40910231146y14028f4el9753debdf334103@mail.gmail.com>
Mime-Version: 1.0
Return-path: <git-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:mime-version:received:date:message-id:subject
         :from:to:content-type;
        bh=KxZyfsrwD1P7A/vyk5EPzhwudJVK/FWjDO5enq5OjpQ=;
        b=J9lEbLHH+VlXPWFtaatgsfHFA1aW+DYXnMJ/00vCHWeO61ePs9/qyU4bJo1wM5fCfl
         CJzVTnxNvM5dgAwfjwEIBosIFUYwL5GCEmIslqp1cNsCtc/jO1smcbeRN64seA0MCB1L
         wlDd+9Do4icVTxR8GeULkAeKwhBwOrEaHDzJM=
Sender: git-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org, kernel-janitors@vger.kernel.org, git@vger.kernel.org

Hi,

Just before I send my patch I got this error with:
./scripts/checkpatch.pl --terse --file
0001-Staging-comedi-driver-fix-coding-style.patch

0001-Staging-comedi-driver-fix-coding-style.patch:27: ERROR: trailing whitespace
0001-Staging-comedi-driver-fix-coding-style.patch:35: ERROR: trailing whitespace
0001-Staging-comedi-driver-fix-coding-style.patch:43: ERROR: trailing whitespace
0001-Staging-comedi-driver-fix-coding-style.patch:53: ERROR: trailing whitespace

I have done a step by step explanation of what I have done:
http://kapare.blogspot.com/2009/09/write-and-submit-your-first-kernel.html

It seem to me that the whitespace are added after I do this command:
git format-patch -s -n master..mybranch

Can someone help me with that because google did help me to found the answer?

Thx

kap
