From: Axel Siebenwirth <axel@pearbough.net>
Subject: Re: reiserfs
Date: Sun, 25 Jan 2004 12:44:35 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040125114435.GB12967@neon>
References: <200401251640.31302.wheds8@ms66.hinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <200401251640.31302.wheds8@ms66.hinet.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: "S. Barret Dolph" <wheds8@ms66.hinet.net>
Cc: linux-newbie@vger.kernel.org

Hi S.!

On Sun, 25 Jan 2004, S. Barret Dolph wrote:

> I have looked at the various file system stuff for comparison. I have been 
> using Reiserfs for some time now and had, until recently, no problems. 

What problems exactly?

> Are Xfs and Jfs still too new to use?

No, they are quite mature filesystems and finally well integrated into the
linux kernel.

> 
> I have used ext3 for my / partition. But I can't remember who told me I should 
> do that or why. Is it a good idea or is Reiserfs fine.

Ext3 is slower as far as I know. Reiserfs is quite stable.
I've had the feeling that JFS was faster when it comes to accessing larger
files and reading large directories, I mean with many files.
I have never actually tried ext3 but have read that it has many problems as
well and is quite slow. The On-disk-layout is very old already.


Axel

> 
> (Other partitions are /swap, /usr, and /home. swap as swap, and the others are 
> reiserfs.) 


____________________________________________________________________________
Axel Siebenwirth				      phone +49 3641 776807 |
Am Birnstiel 3			 		  axel at pearbough dot net |
07745 Jena								    |
Germany________________________________________________http://pearbough.net |

Peeping Tom:
        A window fan.
____________________________________________________________________________
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
