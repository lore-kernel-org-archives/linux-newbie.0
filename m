From: Om. <om.turyx@gmail.com>
Subject: how to debug a driver remotely?
Date: Thu, 10 Aug 2006 21:41:14 -0700
Message-ID: <6b4e42d10608102141v5485de5ay5b62c70a887310ef@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-Disposition: inline
Sender: kernelnewbies-bounce@nl.linux.org
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:ecartis-owner@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

Recently a friend of mine asked me to port a PCI driver from 2.4 to
2.6, which I tried. But I learned that the device is custom made and
not commercially available. Since it is not available anywhere else,
he suggested me that I do remote debugging using telnet/ssh.

For all driver development efforts I have carried out so far, I had
free access to the device, the target machine and a serial port. Now
in this case, without a serial port and remote power off/on
facilities, I would like to ask the list about the options I have.

(I do not have a remote power on/off switch. The driver panics so
often that somebody has to babysit the machine to switch it off and
on.)

Regards,
Om.

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

