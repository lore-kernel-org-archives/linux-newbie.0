From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: synchronising two machines
Date: Fri, 11 Apr 2003 10:33:57 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAKEBNCGAA.Riley@Williams.Name>
References: <1050051885.3493.16.camel@zebra.vil.ite.mee.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <1050051885.3493.16.camel@zebra.vil.ite.mee.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Paul Furness <paul.furness@vil.ite.mee.com>, linux-newbie@vger.kernel.org

Hi Paul.

 > Can anyone suggest a reliable yet simple way of synchronising two
 > identical Linux servers?
 > 
 > I have a server (let's call it X1) which is serving desktops out to
 > multiple clients using XDMCP. I then have a second server with identical
 > hardware (X2) which does the same job. The idea is that if people find
 > X1 is slow and busy they can use X2, and also if X1 fails then X2 is
 > still there.
 > 
 > I want to duplicate everything between the two machines except stuff
 > which has to be unique - network settings being the obvious. During
 > building, this is easy; I have built X1, and then connect the hard disk
 > from X2 into X1 and use dd to copy the image across. Then I put the disk
 > back in X2, boot up and change the network settings and hostname.
 > 
 > However, how do I keep them in sync after that? Ideally, I want to be
 > able to apply updates to only one of them (say X1) and have it
 > automatically propagate those changes to X2. 
 > 
 > rsync is a possible answer, I know, but I have two issues there: 
 > A. I want it to update everything _except_ a few selected files, and  
 > B. I need to run it as root, so to use rsync I'd have to open up rlogin
 > to root, which I'd rather not do if possible.
 > 
 > Anyone got any ideas about what I should look at?

I think what you want is this...

 1. Server MASTER is to be set up to serve desktops out to your users.

 2. Server SLAVE is to be set up as a backup in case something happens
    to server MASTER.

 3. Server SLAVE is to be kept in sync with server MASTER.

What you basically need is to have the "must be unique" entries set up
in such a way that they're not part of what is served. Your "obvious"
case of "network settings" is the easiest to deal with as you just set
up a DHCP server to farm them out, then tell each machine to "get its
settings automatically" and you now have identical settings to be farmed
out to the various machines. Linux includes a DHCP server (dhcpd) and
client (pump) as standard, and Windows 98 and later all include DHCP
clients as standard. Remember that only the IP address has to differ
and DHCP can easily sort that out for you.

Most of the other differences will depend on the user who is logging in,
and that can be dealt with via DHCP as well by just setting it up to
download a script that makes the relevant tweaks depending on the user
who is logged in.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.471 / Virus Database: 269 - Release Date: 10-Apr-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
