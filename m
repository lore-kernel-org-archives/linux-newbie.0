From: Jeff Garzik <jgarzik@pobox.com>
Subject: Re: zero copy issue while receiving the data (counter part of sen
 dfil e)
Date: Tue, 21 Dec 2004 14:30:19 -0500
Message-ID: <41C879CB.3040600@pobox.com>
References: <267988DEACEC5A4D86D5FCD780313FBB02C66FCA@exch-03.noida.hcltech.com> <1103649767.7217.100.camel@beastie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1103649767.7217.100.camel@beastie>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: dima@s2io.com
Cc: "Rajat Jain, Noida" <rajatj@noida.hcltech.com>, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org, kernelnewbies@nl.linux.org, "Sanjay Kumar, Noida" <sanjayku@hcltech.com>, "Deepak Kumar Gupta, Noida" <dkumar@hcltech.com>

Dmitry Yusupov wrote:
> Rajat,
> 
> small correction, if NIC supports DMA operation on receive, than no
> extra copy required. Therefore sock_recvmsg() and tcp_read_sock

large correction:  if NIC supports _checksum_ on receive, then no extra 
copy is required.

	Jeff


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
