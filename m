From: Mark Gallagher <mark@cyberfuddle.com>
Subject: Re: gcc
Date: Wed, 26 Jun 2002 22:25:36 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D19B2C0.5080204@cyberfuddle.com>
References: <F4D3DB9A18752A4F99FD880ABC5407179D15B5@ccdc-exchg.careercommunity.com>
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
> When I compile a C program using gcc, I get an a.out file. But when I type
> a.out, the error is "No such command"
> 
> How do I execute the file?

When you type "a.out", Linux checks the various "path" directories (e.g. 
"/usr/bin") for a file named "a.out".  If it can't find it, then it 
tells you that, well, it can't find it - that the command doesn't exist :o).

You can get around this by typing the exact path of the program.  Say 
a.out is located in "/home/sridhar/".  You can type "~/a.out" (from 
anywhere), or change to your home directory and type "./a.out".



-- 
Mark Gallagher
http://cyberfuddle.com/infinitebabble/




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
