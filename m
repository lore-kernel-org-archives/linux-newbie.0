From: Peter <heisspf@skyinet.net>
Subject: Can't connect to Internet
Date: Sat, 28 Aug 2004 10:21:15 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20040828022115.8392B1C645@heisspf>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

A resend
 
Hi,

On Slackware10 suddenly I cannot connect to the Internet with my major ISP 
skyinet.net. I can login, however, cannot fetch or send mail nor open a web 
page. I can ping successfully with no package loss.

I redid pppsetup and in kppp deleted and reinstalled this particular ISP the 
problem remained. I then did tar xf etc.tar which I back-up monthly again no 
change.

With my second ISP in slackware I have no such problem.

If I boot into RH9 my major ISP skyinet.net works with no problems indicating 
the problem must lay within the slackware box. this mail is now sent from RH9.

Any suggestions how I will solve this problem?

tail -n 40 /var/log/messages

Aug 27 08:40:23 skyinet gconfd (heisspf-680): starting (version 2.6.2), pid 
680
user 'heisspf'
Aug 27 08:40:23 skyinet gconfd (heisspf-680): Resolved address 
"xml:readonly:/et
c/gconf/gconf.xml.mandatory" to a read-only config source at position 0
Aug 27 08:40:23 skyinet gconfd (heisspf-680): Resolved address 
"xml:readwrite:/h
ome/peter/.gconf" to a writable config source at position 1
Aug 27 08:40:23 skyinet gconfd (heisspf-680): Resolved address 
"xml:readonly:/et
c/gconf/gconf.xml.defaults" to a read-only config source at position 2
Aug 27 08:46:23 skyinet gconfd (heisspf-680): GConf server is not in use, 
shutti
ng down.
Aug 27 08:46:23 skyinet gconfd (heisspf-680): Exiting
Aug 27 08:57:19 skyinet -- MARK --
Aug 27 09:00:46 skyinet pppd[996]: pppd 2.4.2 started by heisspf, uid 12346
Aug 27 09:00:46 skyinet pppd[996]: Using interface ppp0
Aug 27 09:00:46 skyinet pppd[996]: Connect: ppp0 <--> /dev/modem
Aug 27 09:00:53 skyinet pppd[996]: Remote message: Login Succeeded
Aug 27 09:00:53 skyinet pppd[996]: PAP authentication succeeded
Aug 27 09:00:54 skyinet pppd[996]: local  IP address 202.78.106.39
Aug 27 09:00:54 skyinet pppd[996]: remote IP address 202.78.97.133
Aug 27 09:05:54 skyinet pppd[996]: Terminating on signal 15.
Aug 27 09:05:54 skyinet pppd[996]: Connection terminated.
Aug 27 09:05:54 skyinet pppd[996]: Connect time 5.2 minutes.
Aug 27 09:05:54 skyinet pppd[996]: Sent 2842 bytes, received 1738 bytes.
Aug 27 09:05:54 skyinet pppd[996]: Connect time 5.2 minutes.
Aug 27 09:05:54 skyinet pppd[996]: Sent 2842 bytes, received 1738 bytes.
Aug 27 09:05:54 skyinet pppd[996]: Exit.
Aug 27 09:17:19 skyinet -- MARK --

The time was spent trying to open URL, to fetch mail and to ping.

Thanks & regards

Peter




-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
