From: "Rajat Jain" <rajat.noida.india@gmail.com>
Subject: "struct file" - per process per file?
Date: Thu, 29 Mar 2007 22:11:48 +0530
Message-ID: <b115cb5f0703290941k26dcefear2a113c939b8db224@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: a=rsa-sha1; c=relaxed/relaxed;
        d=gmail.com; s=beta;
        h=domainkey-signature:received:received:message-id:date:from:to:subject:mime-version:content-type:content-transfer-encoding:content-disposition;
        b=ILH8BgL4lbVIv4MEW2T1hhOdTuw0cj05wgAEvy24w28nnOhnGZs+8rKTy0IxZw5A0kbVUGb2CqQOEUcsuhaZfOhkOGeWV4UrGnZM/xGJ3tW3poh+DnQ/eXLBeLk0F7tWREVOD6KuX7zVIrzhXsnToqmH6awmS2kCknfdQsorGPM=
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
To: kernelnewbies <kernelnewbies@nl.linux.org>, newbie <linux-newbie@vger.kernel.org>

Hi,

This has reference to LDD3 chap3 - Char drivers (Pg 60).

The following is my understanding which seems to be incorrect. Can
somebody please point out what am I missing?

LDD3 states that the fops->open() and fops->release() methods are
called only when "struct file" is created / destroyed. It further says
that "struct file" is created ONLY when a process calls open() system
all on a file. To give an example, it also says that if process 1
opens file A and then forks another process B, then A and B will share
the same struct file??

This seems quite strange to me as I had an understanding that two
processes working on the same file will always have different file
structure. Also, this would mean that a read by one of the processes
on the file would affect the file position pointer in the other
process?

I am sure I am missing something here. What is it?

Thanks,

Rajat

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

