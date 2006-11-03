From: Ray Olszewski <ray@comarre.com>
Subject: Re: Writing/deleting NTFS files??
Date: Thu, 02 Nov 2006 21:30:36 -0800
Message-ID: <454AD3FC.5010803@comarre.com>
References: <20061102200743.GB1570@lnx2.kvinet.com> <454ABA3E.4020702@gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <454ABA3E.4020702@gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Chuck Gelm wrote:
> Hal wrote:
> 
>> My daughter got into trouble with her XP machine so I offered to save
>> the files she wants, using a Linux CD, then re-installing..
>>
>> Trouble is; the needed files are bigger than my flash drive or Zip
>> disks so I thought I would delete some files known bad.. But Linux
>> kernel 2.6.11 or 2.6.13 cannot write to a NTFS drive; read only..
>>
>> Has this been changed or fixed, maybe with another kernel or
>> program?? Mounting the XP drive partition no problem..  Chmod doesn't
>> work of course.. :^(..
>>
>> Any suggestions.. TIA
>>
>> Best,
>>
>>  
>>
> Hi, Hal:
> 
> CD/R, DVD/R, nfs/samba to another computer via network crossover cable,
> remove HD and mount to another computer and copy files,...
> 
> HTH, Chuck

Or you could track down the ntfsprogs package and use its ntfsmount 
program. According to the package's home page 
(http://www.linux-ntfs.org/), "ntfsprogs includes an improved driver, 
ntfsmount, which provides the same functionality as the kernel driver. 
Additionally it also supports basic cases of directory, symlink, device 
and FIFO file creation, deletion and renaming." Still beta though (Isn't 
everything, these days?), so no assurances it works as described.

You don't say which distro your Linux CD is, so I don't know if you have 
it. I did see the ntfsprogs package in the Debian-Sid package list.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
