From: "Bhikkhu Mettavihari" <draketools@gmail.com>
Subject: ftp large files to new server
Date: Mon, 18 Aug 2008 20:54:48 +0530
Message-ID: <2e35683f0808180824h159060f7ga5d6745694794114@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from:to
         :subject:mime-version:content-type:content-transfer-encoding
         :content-disposition;
        bh=BqisulH0xeMP/SLsjzhplDhEig2f5kFn75LokodxR+M=;
        b=Mq+2Is4ZIMLLfN+APVGuooohwkVJkgbSevvhmGWoA+oxKyF2CsGT1FGM+/7oh4wWCa
         BkKBJ6iU8GwrQg8MKePQqrGJyPJ2C3uz+CeknRJmtQw0q1U8zNQxbZAcgCm9ZaZmFU4i
         w9kymDj/JFM5IdmV4oCz5dxixRviyHJrhxXQQ=
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux Newbie <linux-newbie@vger.kernel.org>

I live in Sri Lanka and have 2 servers in the USA.
Server1 is a Debian Box
Server2 is a shared box where I do not have command line access

I have several large files that I have to upload from server1 to Server2.
I would first ssh to Server1
then as root or as a user I will
#ftp Server2
I get a login and password
I am accepted as a user.
then I give the command
mput *.mpeg
and the first file will start going
Then my ssh will time out before the file is uploaded
and I do not have the possibility to say continue with the next file

Is there a way of telling my ftp client to do mput without prompting
me for the next file name.

regards
Mettavihari
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
