From: James Miller <jamtat@mailsnare.net>
Subject: Re: wireless/wired bridge update
Date: Mon, 14 Feb 2005 09:47:54 -0600 (CST)
Message-ID: <Pine.LNX.4.58.0502140927540.14569@localhost.localdomain>
References: <Pine.LNX.4.58.0502061506570.21973@localhost.localdomain>
Mime-Version: 1.0
In-Reply-To: <Pine.LNX.4.58.0502061506570.21973@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

On Sun, 6 Feb 2005, James Miller wrote:

> it should, it looks like the thing to get. It even serves more than one
> function to boot. Description appended below.
>
<snip>
> D-Link Wireless Pocket Router/AP
> DWL-G730AP
>
> The Pocket Router/AP might be small in size, but is huge in functionality.

I evaluated this product recently and have to say I'm dissapointed. Seemed
like it might be a great alternative for a simpler wireless solution under
Linux, but my experience indicates it's not. This is owing to what seems
to me non-interoperability, sometimes called "vendor lock-in." I can't
rule out that my sketchy understanding of wireless and networking
principles may be at fault here as well, though. Anyway, here's a bit
about the device. It has a switch on the bottom for selecting between
access point, router, and client modes. To configure it, you plug it in
and hook a UTP cable between the device and your computer's NIC. Then, you
assign your NIC an address in the 192.168.0.x range and log into the
device at 192.168.0.30. That gives you a little web configuration
interface page--after you log in. Depending on how you've set the switch
(access point, router, or client) you get different options here. The way
I was able to make the device work somewhat was by running a netwrok
detection utility from that interface, and telling the device to use the
network it found. I wasn't quite sure what to do after this. I finally
decided on entering the address of the device as the gateway for my
machine. I was able to browse the network after setting that 192.168.0.30
address as the gateway. The device is not really suitable for the
following reasons: it's too clunky to get on the network. Having to assign
your machine's NIC an IP is not a big deal. But having to manually enter a
gateway address--*in addition to* having to log into the web interface and
have the thing detect the local network--every time you want to go online
with this thing is just too unwieldy. In short, it's not very portable:
unless you're always using it in the same environment, you will encounter
hassles getting online. Another problem crops up with older machines that
may not have up-to-date browsers capable of using the web interface the
thing gives you for configuring it. Overall, I was disappointed. Maybe
I'll just try out a regular bridge next time.

The thing that leads me to believe that vendor lock-in is at work to some
degree here is the fact that the device did not autodetect and get on the
local network. Looking at the quick-start manual, I also noted that the
device is said to be able to communicate with other d-link wireless
components "out of the box." In other works, forcing the thing to detect
the network is not necessary if you're in an environment that uses d-link
wireless components.

James
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
