From: Ravi Kumar Munnangi <munnangi_ivar@yahoo.com>
Subject: start up script
Date: Sat, 6 Mar 2004 02:43:03 -0800 (PST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040306104303.4475.qmail@web60602.mail.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: quoted-printable
To: linux-newbie@vger.kernel.org

Users,
=20
  Iam working in a LAN with a number of systems.
  A system has X hardware address and another has Y
hardware address.
  I want to set the hardware address of the second
system
  also to X.
  I also want to set the primary IP addresses of both
  systems to 172.31.19.30.
  So when I ping to 172.31.19.30, both the systems
  should respond.

  The topology of LAN we are using is star. All
systems
  are connected to a Switch.
  Does the settings change when we are using a bus
  topology?
 =20
  Do I have to write a start up script?
  How should I write?
  =20
  My actual goal is to start 2 web servers on two
  systems with same hardware address and same=20
  primary IP address but with different secondary
  IP addresses. So when a request comes from a=20
  client, the request has to be seen by both=20
  systems. I will write some mechanism by which only
  one will respond finally.

  Please help!
 =20
  Thanks in advance,
  ravikumar

__________________________________
Do you Yahoo!?
Yahoo! Search - Find what you=92re looking for faster
http://search.yahoo.com
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
