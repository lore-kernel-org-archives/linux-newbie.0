From: Chuck Gelm <Chuck@Gelm.net>
Subject: Re: ADSL & Sending Mail? Was: DialUp and ADSL.......
Date: Sat, 25 Nov 2006 16:00:27 -0500
Message-ID: <4568AEEB.1030007@Gelm.net>
References: <e0O5uQ5D.1164229866.0313500.haltec@kvinet.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <e0O5uQ5D.1164229866.0313500.haltec@kvinet.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "haltec@kvinet.com" <haltec@kvinet.com>
Cc: linux-newbie@vger.kernel.org

http://netservices.verizon.net/portal/site/msa/index.jsp?case=c2372

Hal:  Try these settings:

DSL settings

    * Primary DNS: */4.2.2.1/*
    * Secondary DNS: */4.2.2.2/*
    * Domain: dsl.verizon.net
    * Network protocol used: TCP/IP

Mail server settings

    * Incoming mail server (POP3
      <http://netservices.verizon.net/portal/site/msa/index.jsp?case=c2330>):
      */incoming.verizon.net/*
    * Outgoing mail server (SMTP
      <http://netservices.verizon.net/portal/site/msa/index.jsp?case=c2066>):
      */outgoing.verizon.net/*
    * Your Verizon Online user name
    * Your Verizon Online password


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
