From: Jos Lemmerling <jos@lemmerling.net>
Subject: Re: && - Help
Date: Mon, 30 Sep 2002 20:04:58 +0200 (CEST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0209302001010.30682-100000@orthanc.lemmerling.net>
References: <20020930180333.9816.qmail@escalade.vistahp.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <20020930180333.9816.qmail@escalade.vistahp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

On Mon, 30 Sep 2002, Brian Jackson wrote:

> && means to only execute the second/third/etc. command if the previous one 
> completed succesfully.
> the echo is probably just toadd a blank line to make the output of this 
> easier to read. 

Maybe a nice add-on: the || does the oppesite thing; if the previous
command fails, execute the next.

Example: ping -c1 non.existent.host || reinitialize_internet-connection.sh

The script is only executed when ping fails.

> Paul Kraus writes: 
> 
> > What does && represent? 
> > 
> > Here is the command that I saw it in.
> > watch -n 1 "/hylafax/etc/errorstats.sh /hylafax/etc/xferfaxlog &&
> > faxstat -asl && echo && tail /var/log/messages" 
> > 
> > Also why is the echo necessary. 
> > 
> > Cross Posted due to relevancy. 


HTH

--
Jos Lemmerling on Debian GNU/Linux			jos(@)lemmerling(.net)

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
