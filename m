From: Mark Gallagher <mark@cyberfuddle.com>
Subject: Re: Reg:gcc
Date: Wed, 26 Jun 2002 23:07:03 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D19BC77.2040402@cyberfuddle.com>
References: <F4D3DB9A18752A4F99FD880ABC5407179D15BA@ccdc-exchg.careercommunity.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Sridhar J (june end)" <sridharj.hyd@cxknetworks.com>
Cc: linux-newbie@vger.kernel.org

Sridhar J (june end) wrote:
> Hello
> 
> Thanks to all of you who replied promptly to my question. I would like to
> clarify one thing. When I compiled the program using gcc, I tried typing
> a.out. When that didn't work, I did a ls -l which showed me a file called
> a.out*.
> 
> Doesn't it mean that a.out is in the current directory? So why I should go
> to a parent directory as in ./a.out to execute it?

You aren't going to a parent directory in doing that.  "." is your 
present directory, and ".." is a parent.  So if you're in a child of the 
directory with a.out in it, then you'd use ../a.out.  If you're in the 
actual directory it's in, then use ./a.out.


-- 
Mark Gallagher
http;//cyberfuddle.com/infinitebabble/



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
