From: "J." <mailing-lists@xs4all.nl>
Subject: Re: file transfer via telnet
Date: Sat, 22 Feb 2003 11:16:06 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0302221107140.6891-100000@hestia>
References: <5.1.0.14.1.20030222065155.00a194f0@pop.bsb.terra.com.br>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <5.1.0.14.1.20030222065155.00a194f0@pop.bsb.terra.com.br>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Sat, 22 Feb 2003, Thiago F.G. Albuquerque wrote:

> 
> >However, to downoad a file by telnet, capture stdout so:
> >
> >telnet hostname | tee logfile
> >....
> >uuencode remotefile remotefile
> >exit
> >tr -d "r" < logfile | uudecode
> 
> Ok, I understand. But what is this 'tr -d "r"' for?
> 
> Thiago

He's trying to remove the octal '\015' or '\r' newline terminator. BUT the
tr -d 'r' command removes the ascii character 'r' as in octal '\162'.

Little mistake.. I guess. This could disrupt potentialy the encode file.

references:
man ascii

B.T.W.
tr -d '\015' works also als a DOS to UNIX newline converter. I have it as
a handy alias in my .bashrc.
   alias nodos="tr -d '\015'"

nodos < my_msdos_newline.txt > my_unix_newline.txt

J.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
