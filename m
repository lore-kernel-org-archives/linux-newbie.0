From: Mihamina Rakotomandimby <mihamina@gulfsat.mg>
Subject: /proc/${PID}/cmdline parsing
Date: Thu, 3 Jun 2010 09:20:25 +0300
Message-ID: <20100603092026.4807b1bb@pbmiha.malagasy.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Manao ahoana, Hello, Bonjour,

If I launch a 
 $ watch find / -type f -name 'toto'
(it's a useless command just for the example)
and then I get the PID of this.

When I 
 $ cat /proc/${PID}/cmdline
 watchfind/-typef-nametoto

Yes, it's the command line, but I would like to parse it, in order to
display the launched executable + its arguments.

How to parse it?

Misaotra, Thanks, Merci.

-- 
       Architecte Informatique chez Blueline/Gulfsat:
    Administration Systeme, Recherche & Developpement
                                     +261 3456 000 19
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
