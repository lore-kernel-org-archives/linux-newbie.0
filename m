From: Ray Olszewski <ray@comarre.com>
Subject: Re: Reverse DNS
Date: Mon, 16 May 2005 08:14:51 -0700
Message-ID: <4288B8EB.3000202@comarre.com>
References: <200505160723.j4G7Nanl010005@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200505160723.j4G7Nanl010005@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: "Peter H." <heisspf@skyinet.net>
Cc: linux <linux-newbie@vger.kernel.org>

Peter H. wrote:
> Hi,
> 
> Since I have a broadband Internet connection I cannot send mail any longer to 
> addresse of @aol.com. An account that:
> 
> Reverse DNS lookup for your IP address is failing. AOL does require that all 
> connecting Mail Transfer Agents have established reverse DNS.
> 
> After that message I went to reverse DNS research tool where I entered the IP 
> address of the braoadband provider and the result is:
> 
> Quote
> Success! It appears you have Reverse DNS. Please note the following points:
> 
>      * If the sender's domain is the only domain sending mail from a specific 
> IP address, we recommend that the reverse DNS entry (PTR Record) match the 
> domain name (A Record), but we do not require it.
> 
>      * AOL does require that all connecting Mail Transfer Agents have 
> established reverse DNS, regardless of whether it matches the domain.
> 
>     *  Reverse DNS must be in the form of a fully-qualified domain name 
> -reverse DNSes containing in-addr.arpa are not acceptable, as these are merely 
> placeholders for a valid PTR record. Reverse DNSes consisting only of IP 
> addresses are also not acceptable, as they do not correctly establish the 
> relationship between domain and IP address.
> Unquote
> 
> I do not have an e-mail address with the broadband provider instead continue 
> using the same current address of my ISP when I had only a modem connection.
> 
> On the web page http://postmaster.info.aol.com/errors/421dnsnr.html it says 
> among others:
> 
> Quote
> If you are on a dynamic IP address, please call your ISP and request a static 
> IP address with proper rDNS before attempting to send mail to AOL through that 
> server.
> Unquote
> 
> The problem is I have no telephone nor my neighbors for the past 2 months. The 
> telephone company apparently blew-up a connection box and has been so far 
> unable to repair it.
> 
> Any suggestions how to go about it and where do I put the reverse DNS of my 
> e-mail provider if I ever will get it.
> 
> In the meantime I am sending mail to @aol via operamail.
> 
> Thanks & regards 

We could perhaps help more if we had the missing details.

1. What e-mail address is involved in the problem? For now, I'm going to 
guess that it is <heisspf@skyinet.net>.

2. AOL says you don't have reverse DNS; some unidentified "reverse DNS 
research tool" says you do. Let's see ...

	ray@kuryakin:~$ host skyinet.net
	skyinet.net             A       202.78.97.2
	ray@kuryakin:~$ host 202.78.97.2
	Name: ns.skyinet.net
	Address: 202.78.97.2

	ray@kuryakin:~$ host ns.skyinet.net
	ns.skyinet.net          A       202.78.97.2

This looks good. It is how reverse-DNS is supposed to look.

3. But perhaps the problem is that you are not actually sending your 
mail from the above IP address? Looking at the headers for the message 
you sent here, it came from an MTA at 203.87.189.146 . Let's look at 
that address ...

	ray@kuryakin:~$ host 203.87.189.146
	203.87.189.146 does not exist, try again

So there is the problem; the *actual* IP address of your broadband 
connection lacks a reverse-DNS entry.

What to do about this? I'm afraid the advice you found to complain to 
your ISP is right. Reverse-DNS entries need to be provided by whoever is 
authoritative for the *address*, not the domain name, and that (almost 
without exception, for us small users) is your ISP. This lookup failure 
suggests a degree of sloppiness at your ISP that would have me looking 
elsewhere for a service provider.

How to contact your ISP really is not a Linux issue, except perhaps to 
point out that VoIP options exist for use with Linux, if your lack of a 
wireline phone really is a persistent problem.

In the meantime -- does your ISP provide a mail forwarder? Most do. If 
so, setting up your MTA to send mail through that forwarder would 
probably satisfy AOL's requirements.




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
