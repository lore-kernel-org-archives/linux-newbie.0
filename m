From: Bob Batson <rcb@kc.rr.com>
Subject: Re: Should the tr command be run on text files ONLY?
Date: Sat, 12 Mar 2005 14:01:11 -0600
Message-ID: <p05111b00be58fa500129@[65.30.110.44]>
References: <5.1.0.14.1.20050311180556.02022958@celine>
Mime-Version: 1.0
In-Reply-To: <5.1.0.14.1.20050311180556.02022958@celine>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Ray Olszewski <ray@comarre.com>, linux-newbie@vger.kernel.org

At 6:10 PM -0800 3/11/05, Ray Olszewski wrote:

>At 07:49 PM 3/11/2005 -0600, Bob Batson wrote:
>>Should I run the command `tr \\r \\n <macfilename> <unixfilename>' 
>>(minus the quotes) in A Terminal on textfiles ONLY or will tr harm 
>>any binary files?

[snip]

>DEFINITELY run this command only on text files. It will render 
>binary files unusable in most cases and never be good for them. 
>Executables are sure to be unusable, and files like video, sounds, 
>and images will have errors in them that may wreck them or may just 
>introduce bits of distortion.

Thanks a lot! BTW, is the command `tr \\r \\n *' or `tr \r \n *'?

-- 
Bob Batson
rcb@kc.rr.com

"Chocolate is the true opiate of the masses!"
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
