From: Peter <heisspf@skyinet.net>
Subject: Re: FedoraCore5: dhcpcd -d eth0 ?
Date: Tue, 28 Nov 2006 09:26:26 +0800
Message-ID: <20061128092626.3fc98ab8@skyinet.net>
References: <200611260051.kAQ0pN1A001712@skyinet.net>
	<456B1926.103@Gelm.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <456B1926.103@Gelm.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Chuck Gelm <Chuck@Gelm.net>
Cc: linux-newbie@vger.kernel.org

Then K12LTSP must not use the standard apps gnome-panel or they do not have
those programs I mention in next paragraph.

Have you tried from a terminal the commands (usr/bin/internet-druid) and
(usr/bin/system-config-network) or may be /usr/bin/network-admin which is
the command in slackware using dropline-gnome giving the same gui? I use it
to connect for my dial-up ISP via the modem.

In /etc/init.d you might want to have a look at network and netplugd.

I could not find to start eth0 in Fedora as you mentioned we do it in slack
so I use /usr/bin/system-config-network

On Mon, 27 Nov 2006 11:58:14 -0500
Chuck Gelm <Chuck@Gelm.net> wrote:

> Hi, Peter:
> 
> Thanks for your response.  However, when I use the GUI interface
> (K12LTSP, Gnome 2.14.2, 2.6.17-1.2157_FC5, logged in as 'root') and
> 
> Left click Applications -> System Tools ->
>  I do not see Internet Configuration Wizard;
> I do see only File Browser, Fltk Teacher Tool, Software Updater, and Yum 
> Extender.
> 
> &&
> 
> When I right click on the Desktop,
> I do not see System,
> I do see Create Folder, Create Launcher, Create Document, Clean Up by Name
> Keep Aligned, <paste>, Change Desktop Background.
> 
>  So, what am I doing wrong?
> 
>  I would, still, like to know;
> after running, 'netconfig', how do I ask FC5 to restart networking ?
> 
> Regards, Chuck
> 
> Peter wrote:
> > A)  Application -> System Tools -> Internet Configuration Wizard.         		
> > (usr/bin/internet-druid)
> >
> > B) Desktop -> System -> Network 
> > 	(usr/bin/system-config-network)
> >
> > Regards
> >   
> I am trying out K12LTSP and its distribution is Fedora Core 5.
> 
> How do I ask 'eth0' to try to obtain an IP address via DHCP?
> 
> dhcpcd -d eth0
> -bash command not found: dhcpcd
> 
> IIRC RedHat uses a network command 'ifup', so I...
> man ifup
> No manual page for ifup.
> 
> After running, 'netconfig', how do I ask FC5 to restart networking ?
> (In Slackware it would be '/etc/rc.d/rc.inetd restart')
> (other than rebooting ;-)
> 
> Regards, Chuck
> 
> -
> To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 


-- 
Peter
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
