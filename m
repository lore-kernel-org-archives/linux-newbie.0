From: pa3gcu <pa3gcu@zeelandnet.nl>
Subject: Re: Minicom and Modem
Date: Sun, 2 Feb 2003 20:11:38 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <03020220113803.19519@unix.pa3gcu>
References: <200302011710.46462.sotl155360@earthlink.net> <03020213372901.19519@unix.pa3gcu> <200302021252.30505.sotl155360@earthlink.net>
Reply-To: pa3gcu@zeelandnet.nl
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200302021252.30505.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Frank Robers _ SOTL <sotl155360@earthlink.net>, pa3gcu@zeelandnet.nl, Linux Newbie <linux-newbie@vger.kernel.org>

On Sunday 02 February 2003 17:52, Frank Robers _ SOTL wrote:

> Please I don't want to get into the configuration of a Sweitzer system (the
> system being controlled) on this list. Suffice it to say that it is not
> Linux nor MS.

Sorry i was under the impresstion that both machines were linux.

>
> I only want to configure Minicom under linux in the format in which I
> previously had it before I lost the Minicom installation instructions.

Simply start as root, minicom and use -s
minicom -s
change the port setting to /dev/ttyS0 (i belive you said com1)
make sure the speed is correct and it should work.

>
> What I would appreciate knowing is if I issue the commands you suggest will
> that change the operation of Kppp such that I can not then connect to the
> Internet.

Yes it possably would, disregard what i said about /dev/modem.

>
>
> Thanks
> Frank

-- 
Regards Richard
pa3gcu@zeelandnet.nl
http://people.zeelandnet.nl/pa3gcu/

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
