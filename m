From: joy <gracecott@sancharnet.in>
Subject: Re: Moving Hard Drive
Date: Sat, 17 Jan 2004 11:50:49 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4008D441.6090009@sancharnet.in>
References: <20040117031622.B31C01C900@heisspf>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: Peter <heisspf@skyinet.net>
Cc: linux-newbie@vger.kernel.org

Peter wrote:

>I can tell the floppy to boot into hda* and in SlackWare (there is the SW) I 
>have anyhow a bootable live rescue disc.
>
>Regards
>  
>
Since you are on lilo ,  it would be easier to type on the lilo prompt
root=/dev/hda(something - your root partiton)
for it to boot  thru instaed of all  the fuss with boot disks and rescue 
cds .
then edit fstab and lilo.conf

Joy

> --------------------------------------------------------------------------------------------------------
> A life without purpose is like a bird that never learnt to fly.......
> I am the bird that regularly flies Lufthansa



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
