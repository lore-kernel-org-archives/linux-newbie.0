From: jbradford@dial.pipex.com
Subject: Re: Sharing bandwidth across multiple internet connections?
Date: Thu, 17 Oct 2002 15:53:56 +0100 (BST)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200210171453.g9HErucd003824@darkstar.example.net>
References: <200210171454.42606.simon@highlyillogical.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200210171454.42606.simon@highlyillogical.org> from "Simon" at Oct 17, 2002 02:54:42 PM
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Simon <simon@highlyillogical.org>
Cc: linux-newbie@vger.kernel.org

> I recently (yesterday) upgraded my home internet connection from BT ADSL
> (512k/256k), to NTL Cable(1Mb/256k), for the extra speed. However,
> for the next 30 days I seem to be the owner of two broadband connections in
> my home.
> 
> I have a linux (2.4.19) box running as the gateway for my home
> network, and it's doing masquerading over eth1, which is the connection to
> the cable modem. ppp0 is the connection to the ADSL, but is no longer used. 
> (The internal net hangs off eth0)
> 
> Is there a clever trick I can do, to allow my home net to use the available
> bandwidth on both connections? It would be weird, as they would both have a
> very different real-world IP... But is it in any way possible? Seems a shame 
> to have this bandwidth knocking about unused.

Yes, you effetively just need to set up the routing on your gateway
box to use both interfaces.

As long as you load-balance your _outgoing_ packets, you'll
effectively load-balance your incoming ones as well, because other
machines will send back data to the I.P. that they get the request
from.  Therefore, you'll want to send out more data over the NTL Cable
service than the BT ADSL service, because you've got more downstream
bandwidth on the cable pipe.

Have a look at various Linux firewalling and masquerading HOWTOs, and
you should be able to work out the best way to set it up.

John.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
