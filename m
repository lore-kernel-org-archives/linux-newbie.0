From: Riley Williams <rhw@InfraDead.Org>
Subject: Re: Newbie installation problem
Date: Mon, 5 Aug 2002 08:32:49 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <Pine.LNX.4.21.0208050822550.8397-100000@Consulate.UFP.CX>
References: <002301c23c41$7f442b70$6401a8c0@ENRIQUE>
Reply-To: Riley Williams <Riley@Williams.Name>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <002301c23c41$7f442b70$6401a8c0@ENRIQUE>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Enrique Nieves <spanfax@charter.net>
Cc: Linux Newbies <linux-newbie@vger.kernel.org>

Hi Enrique.

>> First, just a detail -- does it really say "Eth0" eather than
>> "eth0"? If so, then RH is introducing unnecessary confusion into the
>> process (since interface names are normally all lower case). If not,
>> then you are not quoting exactly.

> sorry, it says eth0

>> Second, what *immediately* precedes the failure message? Are you
>> *sure* the system is still in the New Hardware phase?

> actually, what immediately precedes the message is "bringing up
> loopback interface [OK]"

>> Third, I had previously thought that this message was coming from a
>> RH install. Now it sounds like part of the boot/init process of an
>> installed RH 7.3. Could you clarify?

> It is in the first boot/init after installation.

>> Fourth, what happens next? If we are talking about an installed RH,
>> does it complete initialization, then give you the login: prompt (or
>> the X equivalent, depending on your setup)? If it does, may we see
>> at this point the output of:
>>
>>          ifconfig -a
>>          netstat -nr
>>          lsmod
>>          lspci

> This is the output I get for:
>
>	ifconfig -a
>	netstat -nr
>	lsmod

The output was badly mangled. Can I suggest you do...

	ifconfig -a > /tmp/ifconfig.log
	netstat -nr > /tmp/netstat.log

...and then just attach /tmp/ifconfig.log and /tmp/netstat.log to your
email for reference if full output is needed.

However, by reading through the mangled logs, I was able to work out
that the interface is being brought up correctly, but the DHCP request
is failing to locate a DHCP server on the network.

>> Last, how do you *want* this system to get its IP address?
>>
>> Do you plan to assign a static address by hand? If so, you
>> (probably) specify this by editing the file /etc/network/interfaces.
>>
>> Use a DHCP server?

> Yes, I plan to use DHCP

>> If so, then where on the LAN are you running one?

> The Linksys

At the moment, the DHCP server in the LinkSys is disabled and you will
need to go in and enable it to solve this problem. Basically, your Linux
setup is almost certainly fine.

Best wishes from Riley.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
