From: SOTL <sotl155360@earthlink.net>
Subject: Router setup
Date: Wed, 9 Mar 2005 19:48:20 -0500
Message-ID: <200503091948.21210.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Linux-Newbie Vger <linux-newbie@vger.kernel.org>

Hi All

I would appreciate a little help with a router set up.

First I would like to keep this as simple as possible with the intent of 
adding complexity after I make the most basic items function as required 
first.

This is a standard Netgear wireless router with 1 input RJ45 port and 4 output 
RJ45 ports and 1 wireless output port.

I would like to have dynastic [input] connection capability for the connection 
to the ISP.

I would like to use static [output] connections to the computers with ports
_____________________________________________
Proposed Static Router Settings

Route Name     <Computer Name for computer X>
Designated IP 192.168.10.X
IP Submask     255.255.255.0
IP Gateway      192.168.1.X

where X = 1, 2, 3, 4, 5 for RJ45 connection 1, 2, 3, & 4 and 5 for the 
wireless connection.
_____________________________________________
LAN IP Set-Up

IP Address 191.168.1.1
IP Subnet   255.255.255.0
Set Use Router DHCP to on
Starting IP Address 192.168.20.1
Ending IP Address 192.168.20.51

I would appreciate knowing if these setting look OK  or not.

Are there any other settings I have to make for the simplest of systems.

Thanks
Frank
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
