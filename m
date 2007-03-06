From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: Cleaning up unrequired #include(s)
Date: Tue, 6 Mar 2007 12:59:53 +0530
Message-ID: <b115cb5f0703052329w1c0730ccs63cf46d06435669c@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=coWasHn/ETQEdzE/mkoOPHx5ZThxanWRGyArHRFP7T+i5uNfP9Anp6w6X4HpIBphUp2B5OKqVLUI9Rz+rfNIg29Vm/GDcSgVDdHCUeUIMu0Vb1ua8MXBpyQDobm7m6Reb7bB8aluJnCcKsrix0KVDR+V/mD/XbPaGZTg9XW/BLw=
Content-Disposition: inline
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Kernel Newbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi list,

I just finished porting the kernel to my board and am trying to
cleanup my code. I had started my copying an existing board code and
modifying it to suit my board. Its now working fine, but has numerous
#includes which I do not think I need any more.

Is there a quickway to correctly identify which all #include
statements can be safely removed from my source files, (because none
of the symbols declared in the corresponding headers are actually used
in my source)?

Thanks,

Rajat

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

