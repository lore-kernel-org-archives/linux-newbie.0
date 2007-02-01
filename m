From: "Robert P. J. Day" <rpjday@mindspring.com>
Subject: Re: __KERNEL__ and __MODULE__
Date: Thu, 1 Feb 2007 14:28:49 -0500 (EST)
Message-ID: <Pine.LNX.4.64.0702011427450.17545@CPE00045a9c397f-CM001225dbafb6>
References: <292693080701312234r206bbc8cxa93ee171b7e25ecb@mail.gmail.com>
 <45C22B91.20102@ieee.org>
Mime-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="0-1449346627-1170358129=:17545"
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <45C22B91.20102@ieee.org>
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
To: Simon Valiquette <v.simon@ieee.org>
Cc: Daniel Rodrick <daniel.rodrick@gmail.com>, Linux Newbie <linux-newbie@vger.kernel.org>, kernelnewbies <kernelnewbies@nl.linux.org>

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--0-1449346627-1170358129=:17545
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by rubicon.netdirect.ca id l11JTHEs010476

On Thu, 1 Feb 2007, Simon Valiquette wrote:

> Daniel Rodrick un jour =E9crivit:

> > 2) Why two variants ? KERNEL V/s __KERNEL__ and MODULE v/s __MODULE__=
?
>
>   AFAIK, there is only MODULE and __KERNEL__.  I don't think that
> __MODULE__ or KERNEL exist.  I greped the 2.6.17 kernel just to be
> sure, and didn't found any instance of them.

actually, there is a single example of "#ifdef KERNEL" in
include/linux/coda.h but, what the heck, i'll submit a patch for that
in the next 30 seconds.

rday

--=20
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
Robert P. J. Day
Linux Consulting, Training and Annoying Kernel Pedantry
Waterloo, Ontario, CANADA

http://www.fsdev.dreamhosters.com/wiki/index.php?title=3DMain_Page
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
--0-1449346627-1170358129=:17545--

--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

