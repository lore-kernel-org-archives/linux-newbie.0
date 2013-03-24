From: Kristof Provost <kristof@sigsegv.be>
Subject: Re: seq in tcp protocol
Date: Sun, 24 Mar 2013 13:08:15 +0100
Message-ID: <20130324120815.GD9539@thebe.jupiter.sigsegv.be>
References: <20130322133008.GA1348@debian.localdomain>
 <20130323133117.GB9539@thebe.jupiter.sigsegv.be>
 <20130324032932.GB23928@debian.localdomain>
 <CAOXuEsxyugU-Z2yVX-8T-OdAxJcxh0gWFMVhX0CNZqBHYDzS3Q@mail.gmail.com>
 <20130324115711.GA9706@debian.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-Disposition: inline
In-Reply-To: <20130324115711.GA9706@debian.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: ishare <june.tune.sea@gmail.com>
Cc: Aniruddha Bhattacharyya <aniruddha.aot@gmail.com>, linux-newbie@vger.kernel.org

On 2013-03-24 19:57:11 (+0800), ishare <june.tune.sea@gmail.com> wrote:
> 
>  How does the sender decide how many packet is needed to transfer one buffer and 
>  manager the seq orders of them ?
> 
http://en.wikipedia.org/wiki/Nagle%27s_algorithm

-- 
Kristof

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
