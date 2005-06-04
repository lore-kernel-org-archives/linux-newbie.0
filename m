From: "nayyer zubair" <nayyerzubair@hotmail.com>
Subject: connecting to remote network from vmware machine
Date: Fri, 03 Jun 2005 23:49:22 -0400
Message-ID: <BAY107-F367BEAB42917B3B523263C0F90@phx.gbl>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format=flowed; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi all

I am in a bit of a fix. I have a VPN connection to my office's network and I 
would like to connect to an office machine from my vmware linux virtual 
machine.

At home I connect through the net through my cable and I have a wireless 
router which gives me a IP address. Right now the router gives the VM 
machine an internal IP address like 192.168.0.3. And it gives my host 
Windows machine a similar IP like 192.168.0.2.

Now from the host windows machine and with my VPN connection I can easily 
connect to my remote office machine just by telneting into it. But I cant do 
it from my vmware machine. Telnet just hangs.

I guess the reason could be that the Linux VM doesnt see that the host 
windows machine has a VPN connection set up, right?  Is there a way the VM 
can detect the VPN connection?

any ideas?

thanks in advance
-nayyer


-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
