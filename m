From: "Eve Atley" <eatley@wow-corp.com>
Subject: Generating SSH Keys
Date: Thu, 19 Feb 2004 11:21:00 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <GNEPLLCIIBHICCOGIAKPKEDMCCAA.eatley@wow-corp.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie <linux-newbie@vger.kernel.org>


I would like to have remote users connect to certain shares on a linux box,
but securely. I've been reading about SSH and generating keys, but I am
confused how to go about this. I am getting my info from here:
http://www.cs.kuleuven.ac.be/system/security/ssh/setup.shtml

First, I tried to run ssh-keygen, but it's asking me for options I don't
understand.

So then I RTFM, and this went over my head; ie.
a. do I use version 1 or 2 of the protocol?
b. do I create this key on the server and then import to the Win boxes, or
the other way around? Or must key pairs be generated at BOTH ends?
c. Where exactly are the keys stored on the linux server? /etc/ssh I assume,
but what files are most important to look at here?

Thanks,
Eve





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
