From: "Peter H." <heisspf@skyinet.net>
Subject: Reverse DNS
Date: Mon, 16 May 2005 15:23:36 +0800
Message-ID: <200505160723.j4G7Nanl010005@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux <linux-newbie@vger.kernel.org>

Hi,

Since I have a broadband Internet connection I cannot send mail any longer to 
addresse of @aol.com. An account that:

Reverse DNS lookup for your IP address is failing. AOL does require that all 
connecting Mail Transfer Agents have established reverse DNS.

After that message I went to reverse DNS research tool where I entered the IP 
address of the braoadband provider and the result is:

Quote
Success! It appears you have Reverse DNS. Please note the following points:

     * If the sender's domain is the only domain sending mail from a specific 
IP address, we recommend that the reverse DNS entry (PTR Record) match the 
domain name (A Record), but we do not require it.

     * AOL does require that all connecting Mail Transfer Agents have 
established reverse DNS, regardless of whether it matches the domain.

    *  Reverse DNS must be in the form of a fully-qualified domain name 
-reverse DNSes containing in-addr.arpa are not acceptable, as these are merely 
placeholders for a valid PTR record. Reverse DNSes consisting only of IP 
addresses are also not acceptable, as they do not correctly establish the 
relationship between domain and IP address.
Unquote

I do not have an e-mail address with the broadband provider instead continue 
using the same current address of my ISP when I had only a modem connection.

On the web page http://postmaster.info.aol.com/errors/421dnsnr.html it says 
among others:

Quote
If you are on a dynamic IP address, please call your ISP and request a static 
IP address with proper rDNS before attempting to send mail to AOL through that 
server.
Unquote

The problem is I have no telephone nor my neighbors for the past 2 months. The 
telephone company apparently blew-up a connection box and has been so far 
unable to repair it.

Any suggestions how to go about it and where do I put the reverse DNS of my 
e-mail provider if I ever will get it.

In the meantime I am sending mail to @aol via operamail.

Thanks & regards 
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
