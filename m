From: Michael Medwid <mmedwid@gmail.com>
Subject: Re: adsl, firewalls, etc.
Date: Mon, 19 Dec 2005 08:43:49 -0800
Message-ID: <faf407640512190843g6f5c3d13sa6dead2f2324d45b@mail.gmail.com>
References: <43A66B34.6070102@arrakis.es>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <43A66B34.6070102@arrakis.es>
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Andrew <ald2@arrakis.es>
Cc: linux-newbie@vger.kernel.org

I assume you mean the "default" configuration.  :-)  The first
question to ask is - are you running a telnet daemon on your box that
you want reachable from the Internet?  Telnet is an unencrypted
protocol - easily sniffed.  If you don't need to remotely access your
machine at all - just turn that port off on the router/firewall.  If
you do need remote command line access to your box - at least make it
SSH port 22.

Same question for ftp-data - are you running FTP that you want open to
the Internet?  If no - turn it off.  If you need a file transfer
facility use SCP which operates on SSH's TCP port 22.  Like telnet FTP
is unencrypted while SCP is encrypted.

Lastly are you running a web server open to the Internet?  I suspect
no given you're newly using ADSL and many ADSL providers give you a
dynamic IP address.  Anyhow - if no - turn off port 80.

-Michael

>The defect configuration leaves ports 20 (ftp-data),  23
>(telnet) and 80 (http)open,"


On 12/19/05, Andrew <ald2@arrakis.es> wrote:
> Midwinter greetings,
>
> I have just moved one rung up on the evolutionary scale and got myself
> an adsl connection. I am probably going to make a few relatively minor
> changes to my home lan because of this, but before going any further
> there is one issue worrying me:
>
> The free modem my isp provided has no support under Linux so I had to
> take the router option. It's a Draytek Vigor 2500. The defect
> configuration leaves ports 20 (ftp-data),  23 (telnet) and 80 (http)
> open, the rest are stealthed (according to Shields Up). Am I right in
> thinking this is not such a good idea? I haven't yet had any success in
> trying to add rules to close these ports, and my isp 'cordially' informs
> me that this is up to me to sort out, so for the time being I am simply
> disconnecting when not in use (about 16 hours a day). Am I being
> over-paranoid?
>
> TIA
> Andrew
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
>
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
