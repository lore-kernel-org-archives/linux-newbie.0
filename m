From: Ole Martin Handeland <oli@oasenlan.com>
Subject: Re: security level configuration
Date: Wed, 03 Nov 2004 20:05:27 +0100
Message-ID: <cmba60$vca$1@sea.gmane.org>
References: <fc.004c4e00006886b5004c4e00006886b5.6886cf@palmertrinity.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <fc.004c4e00006886b5004c4e00006886b5.6886cf@palmertrinity.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

I use webmin, and it is perfect for beginners (http://www.webmin.com/)
It's simple to use, and runs through your client's web-browser.
You can navigate to network->Linux firewall, and add a rule in your 
filters input table.

If you wont try webmin, i suggest reading 'man iptables'

Ole Martin Handeland

William Stanard wrote:
> I'm running Red Hat 2.4.18-14smp; I want to enable Mail(SMTP) on the
> server and already run ssh and httpd. When I go to the Gnome gui System
> Settings > Security Level Configuration I see that the radio button for
> Use default firewall rules has been selected. As I am beginning to feel
> much more comfortable using vi to edit config files, I have been looking
> for the config file(s) to edit. My ultimate aim is to enable this intranet
> box to act as a web server and an intranet mail server, as well as accept
> ftp (Dreamweaver, to update the web pages) and PuTTY ssh connections (my
> student users). Which config file(s) must I edit, and does it (do they)
> contain enough guidance in their comments to enable me to intelligently
> configure my server?
> 
> Bill Stanard
> 
> 
> 
> 
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
