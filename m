From: Ray Olszewski <ray@comarre.com>
Subject: Re: Hard Drive Puzzle
Date: Thu, 06 May 2004 23:43:34 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20040506233636.01efcf50@celine>
References: <20040507133955.6095d838@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20040507133955.6095d838@skyinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

At 01:39 PM 5/7/2004 +0800, Peter wrote:
>Hi
>
>My old HD which I had moved from my old PC to my new PC as master drive has 2
>partitions, one for dos and one for linux. The MBR resided on dos.

No, the MBR is a set location on the disk, and it resides outside any 
partition. Do you mean that you have the drive's boot loader in the DOS 
partition instead of in the MBR?


>I installed now a new HD on the new PC and moved the old HD back to the 
>old PC
>as master drive. On the linux partition of this old drive I made a new
>installation of RedHat 9.0. The dos partition was not touched.
>
>Now to my surprise I cannot boot into dos. If I try I get the error message:
>this is not a bootable disk, please insert a bootable floppy.

Am I right in thinking that you *can* boot into Red Hat from this disk? How 
do you "try" to boot into DOS?

>If I remove this old HD and put it into the new PC as slave drive I can boot
>into the dos partition of this old drive.

Once again, what procedure are you using to "boot into the dos partition"? 
Are you adding a stanza to lilo, or entering command-line options at 
boottime? Or what?

>How does one explain this and how can it be corrected that I can boot into 
>dos
>on the old PC?

Probably you have to modify /etc/lilo.conf so it provides an option to boot 
into DOS. But until you describe better what you are doing that works when 
the drive is a slave in one machine, but fails when it is the master in a 
different one, it will be hard to give you more exact advice.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
