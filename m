From: "Alexandr Lebedev" <a.lebede@gmail.com>
Subject: Re: how to debug a driver remotely?
Date: Fri, 11 Aug 2006 04:21:34 -0400
Message-ID: <a055a49b0608110121h76564d60mebc4d6c08d3968a@mail.gmail.com>
References: <6b4e42d10608102141v5485de5ay5b62c70a887310ef@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <6b4e42d10608102141v5485de5ay5b62c70a887310ef@mail.gmail.com>
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
To: "Om." <om.turyx@gmail.com>
Cc: linux-newbie@vger.kernel.org, kernelnewbies <kernelnewbies@nl.linux.org>

> (I do not have a remote power on/off switch. The driver panics so
> often that somebody has to babysit the machine to switch it off and
> on.)

why not try user-mode-linux
user-mode-linux.sourceforge.net

It will allow you to run kernel from usermode, and if the kernel
panics you can always restart it.

-- 
wbr, Alex

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

