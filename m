From: "Lee Chin" <leechin@mail.com>
Subject: Identifying computers behind a NAT
Date: Mon, 07 Oct 2002 20:07:35 -0500
Sender: linux-net-owner@vger.kernel.org
Message-ID: <20021008010735.8144.qmail@mail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-net-owner@vger.kernel.org>
Content-Disposition: inline
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hahn@coffee.psychology.mcmaster.ca, linux-newbie@vger.kernel.org, linux-net@vger.kernel.org

Hi,
For billing and licensing reasons in our product, I need to be able to identify machines when they connect to our server... 

The issue that we have is that these machines may be behind a NAT firewall and we dont see the real IP of the machine... 

Is there any way at all to identify a socket connection as belonging to a certain machine other than just IP address?  For example, would I be able to look at the TCP packets acknowledge numbers and that in combo with the IP would give me some idea of the machines behind the NAT?

Thanks
Lyle
-- 
__________________________________________________________
Sign-up for your own FREE Personalized E-mail at Mail.com
http://www.mail.com/?sr=signup

"Free price comparison tool gives you the best prices and cash back!"
http://www.bestbuyfinder.com/download.htm

