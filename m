From: sandeep kiran p <sandeepkiranp@gmail.com>
Subject: dm-crypt - submit a bio synchronously
Date: Sat, 20 Aug 2022 07:35:28 -0400
Message-ID: <CAAxGnDA9Hnav=UMVd+xYjJ7tZFYnCYpPF8kGT3naSnuBB04bGw@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=to:subject:message-id:date:from:mime-version:from:to:cc;
        bh=6zvNclo7DkUtiwK0jnL3QN/xZTx52iWC9J1Em2KlPqY=;
        b=aEC2y/lenzIy6PhOL3UAAk8TxYzfLIbN6Zz/Jq//YyAjKACOG/QT/Yr4cf8cPIPcay
         zKc1i6Wux0jOL2eOsPlDHuKbvBn1cHoBe53HeBh1ytrM2pm7hUG0WF8WFk2Zbk+4eXLI
         AQQiqu3yyveWAR1tAk1BOor8bNgdRnMFlGY3uaerLpViJSfjkUwBi255sPzvzUCP9yBZ
         I/avZoYvMhuLZ2lUy2ExDOoJ6SzaaGG/eWcfGmvGrfagczpt8kcylNL+s2liYDgccqJp
         v/tuphnR/zAsdY71K74ER8LRRLKepHyH3BcFE6xfR8U2q11R21MFr3A6weRlei4Dc9JD
         qqkA==
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

dm-crypt.c has calls to dm_submit_bio_remap to submit a bio
asynchronously to the underlying layer device. I have a requirement
for synchronous submission of a bio. When I used submit_bio_wait, the
call just hangs forever. If I set REQ_SYNC in bio->bi_opf and set both
bio->bi_private and bio->bi_end_io to NULL (indicating no callback),
and then use dm_submit_bio_remap , I get an OOPS with null pointer
dereference.

Can you help me with a proper way to submit the bio synchronously
inside dm-crypt.c?
