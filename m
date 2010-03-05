From: Cyril <tipecaml@gmail.com>
Subject: Linux 2.6.30 and the "init_cred" symbol
Date: Fri, 05 Mar 2010 04:54:37 +0100
Message-ID: <4B90807D.7000906@gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=gamma;
        h=domainkey-signature:received:received:message-id:date:from
         :user-agent:mime-version:to:subject:content-type
         :content-transfer-encoding;
        bh=byez+ZTQaZy1OWCxNRooBBFMJcQ6oP2qSFIQRvv4nLs=;
        b=sY7mCoARQLpPD6zAQYomHwSLK/0nuAzu+sqoDNbm0LWle96s0CgC2voc85SR2g6pNz
         tIiKXAyLeba+8j0WpMGtzGwbRC3wCWLjEAoVUTUpaJ4+IGAxyzDZenCCTDditeTUuNtd
         I1CBvft21NiLA15tKCHw2VmyyDVpIRGdLTafQ=
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Hello all !

I have recently become interested in understanding some recent exploits 
written by Brad Spengler, and especially the one using a null-pointer 
dereference in tun_chr_poll() (this exploit can be found here : 
http://grsecurity.net/~spender/cheddar_bay.tgz).

After taking a look at his code, I decided to compile Linux 2.6.30, so I 
could run the exploit and play with the code a little. I ended up 
cloning the following repository 
(http://git.kernel.org/?p=linux/kernel/git/stable/linux-2.6.30.y.git;a=summary) 
and doing a checkout of an older branch (in which the patch 
http://git.kernel.org/?p=linux/kernel/git/stable/linux-2.6.30.y.git;a=commit;h=3f8fd3f9f677ce452556aca82473b7fcac370830 
had not been applied). I compiled the kernel as a .deb package, and it 
works perfectly on a virtual machine running Debian.

The problem is I can't get to run the exploit : to do so, I would need 
to be able to resolve the address of the "init_cred" symbol. The fact is 
that the following command does not return anything :
$ grep init_cred /proc/kallsyms

According to http://lwn.net/Articles/287091/, init_cred is "the set of 
credentials used by the init process and by all kernel daemons", which 
makes me think this symbol should be there. Do you think I did something 
wrong when compiling the kernel, or is that normal not to find this 
symbol on certain versions of Linux ?

Thanks in advance !

Cyril Roelandt.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
