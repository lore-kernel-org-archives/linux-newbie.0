From: "Ajay Singh \(ajaysi\)" <ajaysi@cisco.com>
Subject: RE: kernel porting query
Date: Fri, 16 Feb 2007 09:48:45 +0530
Message-ID: <677342AB6AE12D4DB59A9D473F40D74B028E0411@xmb-blr-416.apac.cisco.com>
References: <7783925d0702151816r7df63816ld9c69b56bdb0a0b9@mail.gmail.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <kernelnewbies-bounce@nl.linux.org>
Content-class: urn:content-classes:message
In-Reply-To: <7783925d0702151816r7df63816ld9c69b56bdb0a0b9@mail.gmail.com>
DKIM-Signature: v=0.5; a=rsa-sha256; q=dns/txt; l=1086; t=1171599528; x=1172463528;
	c=relaxed/simple; s=inddkim1002;
	h=Content-Type:From:Subject:Content-Transfer-Encoding:MIME-Version;
	d=cisco.com; i=ajaysi@cisco.com;
	z=From:=20=22Ajay=20Singh=20\(ajaysi\)=22=20<ajaysi@cisco.com>
	|Subject:=20RE=3A=20kernel=20porting=20query
	|Sender:=20;
	bh=8mOc7nTWd698cS7zVXljnWUL1xW5ad2BH5A3ugGpFtc=;
	b=ThNnSjdtCSTRy6TE50SvrkTDoRDDZLTsW1RzgU8wQyPTo3pdvNnNzxBaHMzb7bcWpkkICFfT
	aD9V7zuny4S2c4P2f4n6lYsB6+PLKXJaqsfSRuPuGKCbNQx2LRcTdo4t;
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
Content-Type: text/plain; charset="us-ascii"
To: Rick Brown <rick.brown.3@gmail.com>, Linux Kernel <linux-kernel@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>, linux-newbie@vger.kernel.org

=20

<snip>=20
1) Can any one please shed some light on precisely and exactly what are
differences in different boards for which we need to port linux?

The differences depends on the boards ... Mostly if they belong to the
same family the differences could be mainly in the peripherials ...
Interrupt mappings... Serial interface ... Memory sizes (if differnet
boards have different memory sizes) ... Sometimes some devices may be
moved to some other locations in the memory map (Look at memory map of
your SoC on your board).=20

2) Also, I would appreciate if you could point out code portions /
source files that need to be changed in the process of porting Linux?

Look in linux-2.6.20\arch\mips\mips-boards for help on porting to your
board. You can add directory specific to your board here.
I think you can start from xxx_setup.c file in the above directory.

Good luck.
Ajay.

TIA,

Rick

--
To unsubscribe from this list: send an email with "unsubscribe
kernelnewbies" to ecartis@nl.linux.org Please read the FAQ at
http://kernelnewbies.org/FAQ

--
To unsubscribe from this list: send an email with
"unsubscribe kernelnewbies" to ecartis@nl.linux.org
Please read the FAQ at http://kernelnewbies.org/FAQ

