From: "Yawar Amin" <yawar.amin@gmail.com>
Subject: Re: skype
Date: Fri, 24 Mar 2006 19:59:02 +0800
Message-ID: <efc7f7d00603240359v12119442jb6753be94767e72a@mail.gmail.com>
References: <1143022954.3360.19.camel@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1143022954.3360.19.camel@localhost.localdomain>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi John,

On 3/22/06, John Woodrow <samuraiinlove@gawab.com> wrote:
[...]
>
> [root'at'localhost /]# lsmod | grep snd
> bash: lsmod: command not found
> [root'at'localhost /]# lspci -v | grep -A 5 audio
> bash: lspci: command not found
[...]

Try

$ which lsmod lspci

It should tell you that lsmod and lspci live in /sbin. So Fedora users
by default have to give the full path:

$ /sbin/lspci
$ /sbin/lsmod

HTH,

--
Yawar
Malaysia +60 (12) 918 6642
Bangladesh +880 (174) 614 754 or +880 (2) 882 1848 or +880 (175) 003
706 or +880 (189) 250 170
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
