From: "Sean Rima" <linux-net@tcob1.net>
Subject: Re: Exim borked
Date: Saturday, 31 Aug 2002 12:33:18 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <MSGID_110=3a10=2f1_990845bd@fidonet.org>
References: <BAG2SMTP.1480023854.030749181@digdilem.org>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <BAG2SMTP.1480023854.030749181@digdilem.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Originally to: Rimegate@rime.Org (spam.B.Goneftn@d

 R(> Hello All

Hello Simon, we seem to meet in strange places.

 R(> I've managed to break exim. :(

Nah, I tried it and failed :)

 R(> (Debian 3, Kernal 2.4.18)

 R(> /var/log/exim/paniclog reads thus:

 R(> Unable to get root to set uid 1000 and gid 8 for local delivery to
 R(> flash: uid=8 euid=8


This can be a couple of things (and I have to presume that you are using exim 
4.x):
a) Make sure that the exim binary is chmod 4755 (ie -rwsr-xr-x) B) this can also 
be a problem with the director for the delivery, if you are trying to use 
procmail/tmda/maildrop etc. It depends but try the first and let us know how you 
get on.

Sean


... COFFEE.CUP empty - Operator shelled out to KITCHEN

<-> Gateway Information.
This message originated from a Fidonet System (http://www.fidonet.org)
and was gated at TCOB1 (http://www.tcob1.net)
Please do not respond direct to this message but via the list


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
