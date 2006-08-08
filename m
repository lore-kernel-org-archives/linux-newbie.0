From: "H. Peter Anvin" <hpa@zytor.com>
Subject: Re: Univeral Protocol Driver (using UNDI) in Linux
Date: Tue, 08 Aug 2006 09:35:29 -0700
Message-ID: <44D8BD51.8040206@zytor.com>
References: <292693080608070339p6b42feacw9d8f27a147cf1771@mail.gmail.com>	 <44D7579D.1040303@zytor.com>	 <292693080608070911g57ae1215qd994e03b9dd87b66@mail.gmail.com>	 <44D76F26.9@zytor.com> <292693080608072213n2be75176g46199e92d669f5de@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
In-Reply-To: <292693080608072213n2be75176g46199e92d669f5de@mail.gmail.com>
Sender: linux-net-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Daniel Rodrick <daniel.rodrick@gmail.com>
Cc: Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org

Daniel Rodrick wrote:
> 
> Hi ... so there seem to be no technical feasibily issues, just
> reliabliy / ugly design issues? So one can still go ahead and write a
> Universal Protocol Driver that can work with all (PXE compatible)
> NICs?
> 

For some definition of "all" = meaning "it might work on some of them."

> Are there any issues related to real mode / protected mode?

Yes, a whole bunch of PXE/UNDI stacks are broken in protected mode.

	-hpa
