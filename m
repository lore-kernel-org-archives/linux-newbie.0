From: Christian Pedaschus <cpedaschus@gmx.de>
Subject: Re: Cinelerra--Video Editing??
Date: Sat, 17 Jun 2006 23:49:01 +0200
Message-ID: <449478CD.5000600@gmx.de>
References: <20060615183404.GA1711@lnx2.kvinet.com> <4491D6F6.9030901@comarre.com> <20060616181241.GA1110@lnx2.kvinet.com> <449346E4.8000702@comarre.com> <20060617194133.GA1262@lnx2.kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20060617194133.GA1262@lnx2.kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org
Cc: haltec@kvinet.com

Hal MacArgle wrote:

>I didn't check that except to note that the 1.0gB swap file
>was not used at all.. One puzzler though is that total memory is
>listed as 902616, when BIOS reports the actual 1.25gB of fitted
>memory.. Free says used=880976 and free=21640 idling?? That doesn't
>look right to me.. Herewith anyway:
>------------------------------------------------------------------------------
>             total       used       free     shared    buffers     cached
>Mem:        902616     880976      21640          0       7096     841912
>-/+ buffers/cache:      31968     870648
>Swap:      1004052          0    1004052
>------------------------------------------------------------------------------
>  
>
Check if you have "High Memory Support (4GB)"  in kerneloptions, there
was something with a ~900Mb limit if not, can't remember exactly.

Just my 2 cents

Greets, Chris



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
