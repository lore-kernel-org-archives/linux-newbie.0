From: "John W. Linville" <linville@tuxdriver.com>
Subject: Re: zero copy issue while receiving the data (counter part of sendfil e)
Date: Wed, 22 Dec 2004 11:06:27 -0500
Message-ID: <20041222160625.GB19449@tuxdriver.com>
References: <267988DEACEC5A4D86D5FCD780313FBB02C66FCA@exch-03.noida.hcltech.com> <1103649767.7217.100.camel@beastie> <41C879CB.3040600@pobox.com> <1103658190.7217.121.camel@beastie> <1103703718.3775.93.camel@samish.india.ascend.com> <20041222155003.GA29278@svana.org>
Mime-Version: 1.0
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-Disposition: inline
In-Reply-To: <20041222155003.GA29278@svana.org>
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
Content-Transfer-Encoding: 7bit
To: Martijn van Oosterhout <kleptog@svana.org>
Cc: Mandeep Sandhu <Mandeep_Sandhu@infosys.com>, dima@s2io.com, Jeff Garzik <jgarzik@pobox.com>, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org, linux-kernel@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

On Wed, Dec 22, 2004 at 04:50:05PM +0100, Martijn van Oosterhout wrote:

> Generally, reading from memory takes time because the CPU has to wait,
> writing is free since it can be deferred in the cache (in theory
> indefinitly) until there's free cycle.

I'm not sure I'd call that "free" -- executing the instructions for
the write has a non-zero cost.

Still, it is significantly cheaper than the read...

John
-- 
John W. Linville
linville@tuxdriver.com

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

