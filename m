From: Jim Reimer <jdr@wa5rrh.org>
Subject: Re: Extract images from zipped .eve archives
Date: Fri, 29 Nov 2002 14:00:42 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DE7C76A.9040009@wa5rrh.org>
References: <5.1.0.14.1.20021129083149.02134d90@celine> <200211291827.gATIRCP02697@hartford-hwp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200211291827.gATIRCP02697@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Haines Brown <brownh@hartford-hwp.com>
Cc: linux-newbie@vger.kernel.org

give unzip the entire file name (no wild cards) and it should work.

-jdr-

Haines Brown wrote:

<snip>

> 
>   # unzip -v circuit-svg-gates*
>   Archive:  circuit-svg-gates_library.zip
>    Length   Method    Size  Ratio   Date   Time   CRC-32    Name
>   --------  ------  ------- -----   ----   ----   ------    ----
>       6830  Defl:N     3053  55%  01-26-02 17:52  19a125f7  gates_library.eve
>   --------          -------  ---                            -------
>       6830             3053  55%                            1 file
> 
> 

<snip>

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
