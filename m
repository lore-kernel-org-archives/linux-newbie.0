From: Jos Lemmerling <jos@lemmerling.nl>
Subject: Re: file transfer via telnet
Date: Fri, 21 Feb 2003 09:27:59 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0302210920420.11589-100000@orthanc.lemmerling.net>
References: <63338.200.136.52.249.1045777444.squirrel@www.mandic.com.br>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <63338.200.136.52.249.1045777444.squirrel@www.mandic.com.br>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Thu, 20 Feb 2003, Eckhardt, Rodolpho H. O. wrote:

> If I'm not mistaken, you cannot do that because telnet transfers only ASCII caracters or
> something like that (terminal related caracters)... There isn't a way to tell it to
> transfer something in binary (like ftp's "binary").

Isn't there some way to solve this with uudecode and uuencode? I don't
know how, but those programs make it possible to transfer binary files
over ASCII-only mediums.

From the man-page uudecode:
Uuencode and uudecode are used to transmit binary files over transmission
mediums that do not support other than simple ASCII data.


If someone knows *how* to do it, plz let the list know...

HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.nl)


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
