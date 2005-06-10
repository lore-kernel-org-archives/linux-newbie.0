From: "heisspf@skyinet.net" <heisspf@skyinet.net>
Subject: Re: Can't Send Mail No Longer
Date: Fri, 10 Jun 2005 04:28:45 -0400
Message-ID: <180150-2200565108284535@M2W090.mail2web.com>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks Stephen!

Peter wrote
>
>>In March this year I got my broadband Internet connection and I could go
on >>sending mail as before using my ISPs.
>
>> 2 weeks ago the base station for my BB was hit by lighhtening and some
>>eletronics destroyed. It took 12 days to repair and to restore my
connection.
>
>>After this I cannot send anymore my mail with mail programs such as exmh,
>>mail, sylpheed or thunderbird. This is in 3 distros, knoppix, slackware
and >>fedora 3. No problem using web mail such as operamail and no problem
receiving >mail.
--snip--

Stephen wrote

>If you're using sendmail, then you can set the Smart Relay Host to be
>your designated ISP SMTP server.

># "Smart" relay host (may be null)
>DSmail.my-isp-name.net

I entered:DSmail.skyinet.net

Then I did telinit 1, telinit 3. The result is the same, mail will not go
out.

If I do as you suggested

iptables -t nat -I OUTPUT -m tcp -p tcp --dport 25 -j DNAT 
--to-destination 202.78.97.2

then there is no output.

nslookup skyinet.net (my ISP I am sending mail)
Server:         203.87.128.3
Address:        203.87.128.3#53

Non-authoritative answer:
Name:   skyinet.net
Address: 202.78.97.2

and 

nslookup meridian.ph (meridian the broadband connection)
Server:         203.87.128.3
Address:        203.87.128.3#53

Name:   meridian.ph
Address: 203.87.128.87

On booting I get:

dhcpcd: Your IP Address = 198.168.232.2

nslookup 192.168.232.2
Server:         203.87.128.3
Address:        203.87.128.3#53

** server can't find 2.232.168.192.in-addr.arpa: NXDOMAIN

I finally got an answer from meridian, which is all:
Quote
try using smtp.meridian.ph as your SMTP server....  and also check 
that you are using meridian service for the said configuration, using 
your skyinet and ispx connection wouldn't work with our SMTP server.
Unquote

They don't touch why it had worked for 2 1/2 months.

Should smtp.meridian.ph not have a login name and password. I have asked
that and have no answer yet.

I am sednding this mail with mail2web.com. It's a lot more cumbersome then
using a MUA or just "mail" from the console.

Hope we can resolve this problem. I need step by step instructions adopted
to my cranial capacity. Have patience therefore. 

Regards

Peter

--------------------------------------------------------------------
mail2web - Check your email from the web at
http://mail2web.com/ .


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
