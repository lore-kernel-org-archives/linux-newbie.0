From: Kanhu Rauta <krauta@cisco.com>
Subject: Problem with nf_register_hook
Date: Fri, 16 Feb 2007 17:56:33 +0530
Message-ID: <00CD0E63DB0F44FE927ECD64800161CC@cisco.com>
Reply-To: Kanhu Rauta <krauta@cisco.com>
Mime-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_0055_01C751F3.D0CFA380"
Return-path: <kernelnewbies-bounce@nl.linux.org>
DKIM-Signature: v=0.5; a=rsa-sha256; q=dns/txt; l=5011; t=1171628803; x=1172492803;
	c=relaxed/simple; s=sjdkim8002;
	h=Content-Type:From:Subject:Content-Transfer-Encoding:MIME-Version;
	d=cisco.com; i=krauta@cisco.com;
	z=From:=20Kanhu=20Rauta=20<krauta@cisco.com>
	|Subject:=20Problem=20with=20nf_register_hook
	|Sender:=20;
	bh=MdMUcLcyB5/+m/wVMcO4Fqi6zMWjSU9p3XLgpZGK0BY=;
	b=rNSqKrr68NQnsjtH+cCDPsIvVM/BTs5YPUaHH4wJH4HZ08VtZ/NkIS1hZfk4IuNsG1kfChbY
	eof7zWarFObEKBociM/f3y23SfovL7nYdcj3dltq0gwqbfgh/2BlQc5/;
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
To: kernelnewbies@nl.linux.org, linux-newbie@vger.kernel.org, 'Linux Kernel' <linux-kernel@vger.kernel.org>

------=_NextPart_000_0055_01C751F3.D0CFA380
Content-Type: text/plain;
	charset="us-ascii"
Content-Disposition: inline

Hi list,
 
I am using Linux 2.6.9-42.7.EL kernel, And registering a function in
netfilter like
 
nf_register_hook( &test );    and test is defined like....
 
static struct nf_hook_ops test
= { { NULL, NULL }, print_packet, PF_INET, NF_IP_LOCAL_IN, NF_IP_PRI_FILTER
};
 
print_packet is defined like....
static unsigned int print_packet (unsigned int hook, struct sk_buff **pskb,
                const struct net_device *indev, const struct net_device
*outdev,
                int (*okfn)(struct sk_buff *) ) {
 
}
 
PROBLEM: the registration of the function is successful.....
but I am not getting the local packets(destination ip is my ip) in this hook
function (print_packet).
 
But I am able to see the packets meant for me in tcpdump and also in my
application running in userspace.
 
This module works successfully in 2.4 kernel....
 
 
Can any one please help me to resolve the problem ?

 With Regards,
      kanhu

------=_NextPart_000_0055_01C751F3.D0CFA380
Content-Type: text/html;
	charset="us-ascii"
Content-Transfer-Encoding: quoted-printable
Content-Disposition: inline

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML><HEAD>
<META http-equiv=3DContent-Type content=3D"text/html; charset=3Dus-ascii"=
>
<META content=3D"MSHTML 6.00.2800.1586" name=3DGENERATOR></HEAD>
<BODY>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>Hi=20
list,</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>I&nbsp;=
am using=20
Linux 2.6.9-42.7.EL kernel, And registering a function in netfilter=20
like</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>nf_regi=
ster_hook(=20
&amp;test );&nbsp;&nbsp;&nbsp; and test is defined like....</SPAN></FONT>=
</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>static s=
truct=20
nf_hook_ops test<BR>=3D { { NULL, NULL }, print_packet, PF_INET, NF_IP_LO=
CAL_IN,=20
NF_IP_PRI_FILTER };</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007><SPAN=20
class=3D221510212-16022007></SPAN></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>print_p=
acket is=20
defined like....</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>static u=
nsigned int=20
print_packet&nbsp;(unsigned int hook, struct sk_buff=20
**pskb,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;=20
const struct net_device *indev, const struct net_device=20
*outdev,<BR>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=20
int (*okfn)(struct sk_buff *) ) {</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007>}</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>PROBLEM=
: the=20
registration of the function is successful.....</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>but I a=
m not getting=20
the local packets(destination ip is my ip) in&nbsp;this hook function=20
(print_packet).</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>But I a=
m able to see=20
the packets meant for me in tcpdump and also&nbsp;in my application runni=
ng in=20
userspace.</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN class=3D221510212-16022007>This mo=
dule works=20
successfully in 2.4 kernel....</SPAN></FONT></DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV>
<DIV><FONT face=3DArial size=3D2><SPAN=20
class=3D221510212-16022007></SPAN></FONT>&nbsp;</DIV><FONT size=3D+0><SPA=
N=20
class=3D221510212-16022007><FONT face=3DArial size=3D2>
<P>Can any one please&nbsp;<SPAN class=3D221510212-16022007>help me to re=
solve the=20
problem ?</SPAN></P>
<DIV></FONT><FONT face=3DArial size=3D2>&nbsp;With Regards,</FONT></DIV>
<DIV><SPAN class=3D221510212-16022007><FONT face=3DArial=20
size=3D2>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=20
kanhu</FONT></SPAN></SPAN></FONT></DIV></BODY></HTML>

------=_NextPart_000_0055_01C751F3.D0CFA380--

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

