From: Thorsten Alge <mail@thorsten-alge.de>
Subject: TFTP
Date: Wed, 09 Jun 2004 08:52:15 +0200
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <40C6B39F.4070200@thorsten-alge.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; format="flowed"
To: linux-newbie@vger.kernel.org

Hi,

i=B4ve some trouble with my SuSE Linux Installation Server. I=B4ve set =
up=20
this Server for automatic install from network via PXE boot. Most thing=
s=20
run correct, but my tftp dont work. I=B4ve googled about this problem a=
nd=20
found ever the same solution - activating ip_no_pmtu_disc and=20
deactivating blksize. So i changed my /etc/inetd.conf from:

tftp    dgram   udp     wait    root    /usr/sbin/in.tftpd      in.tftp=
d=20
-cvvp -s /tftpboot

to

tftp    dgram   udp     wait    root    /usr/sbin/in.tftpd      in.tftp=
d=20
-cvvp -r blksize -s /tftpboot

and run

echo 1 > /proc/sys/net/ipv4/ip_no_pmtu_disc

but i ever got the same sh*+-!...

Can anyone help?
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
