From: Mandeep Sandhu <Mandeep_Sandhu@infosys.com>
Subject: Re: zero copy issue while receiving the data (counter part of
	sendfil e)
Date: Wed, 22 Dec 2004 13:51:58 +0530
Message-ID: <1103703718.3775.93.camel@samish.india.ascend.com>
References: <267988DEACEC5A4D86D5FCD780313FBB02C66FCA@exch-03.noida.hcltech.com>
	 <1103649767.7217.100.camel@beastie>  <41C879CB.3040600@pobox.com>
	 <1103658190.7217.121.camel@beastie>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <1103658190.7217.121.camel@beastie>
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
Content-Type: text/plain; charset="us-ascii"
To: dima@s2io.com
Cc: Jeff Garzik <jgarzik@pobox.com>, "Rajat Jain, Noida" <rajatj@noida.hcltech.com>, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>, "Sanjay Kumar, Noida" <sanjayku@hcltech.com>, "Deepak Kumar Gupta, Noida" <dkumar@hcltech.com>

On Wed, 2004-12-22 at 01:13, Dmitry Yusupov wrote:
> indeed :)
> another words if you have modern NIC than you get "zero-copy"(except
> copy_to_user()) for free :)
what does "checksum on rx" mean??? Don't most of the NIC's support
DMA-ing to mem on rx-ing a packet? so what does "zero-copy for free"
mean here?

thanx,
-mandeep
> 
> Regards,
> Dima
> 
> On Tue, 2004-12-21 at 14:30 -0500, Jeff Garzik wrote:
> > Dmitry Yusupov wrote:
> > > Rajat,
> > > 
> > > small correction, if NIC supports DMA operation on receive, than no
> > > extra copy required. Therefore sock_recvmsg() and tcp_read_sock
> > 
> > large correction:  if NIC supports _checksum_ on receive, then no extra 
> > copy is required.
> > 
> > 	Jeff
> > 
> 
> 
> --
> Kernelnewbies: Help each other learn about the Linux kernel.
> Archive:       http://mail.nl.linux.org/kernelnewbies/
> FAQ:           http://kernelnewbies.org/faq/
> 

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

