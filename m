From: Chris Rose <offline@shaw.ca>
Subject: Samba as DC
Date: Sun, 27 Apr 2003 20:12:14 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <000201c30d2b$968e0330$4b01a8c0@deadbox>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: "Linux-Newbie (Linux Newbie)" <linux-newbie@vger.kernel.org>

 
-----BEGIN PGP SIGNED MESSAGE-----
Hash: SHA1

First off, i'll confess that i know very little about exactly what a domain controller does, so i might be barking up the wrong tree, here, and there may be a much simpler solution.

I have a firewall (Clarkconnect - they're really good) that acts as a router for my home network/cable internet.  It currently provides DHCP services and NAT.

I just bought a wireless router, though, and now i have a problem.  My laptop is now on the router's subnet (192.168.0.*) while the rest of the systems are on the firewall's internal subnet, along with the WAN side of the wireless router (192.168.1.*)

What i want is to get filesharing working again between all these systems...  Is it as simple as changing the subnet masks from 255.255.255.0 to 255.255.0.0?  Or do i have to set up DC services on the firewall?  And if i do, how do i do it?

Thanks in advance...

Chris R.
=======
http://offline.pointclark.net/

-----BEGIN PGP SIGNATURE-----
Version: PGP 8.0

iQA/AwUBPqyN/sFBXq9qNmWaEQIdtQCg8UQQlciDALhY+umt3s+IETsf4oQAoI5t
hCXNA4GT+gAmMMOT87ZqQyf3
=vxfO
-----END PGP SIGNATURE-----

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
