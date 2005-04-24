From: larsene <l_arsene@tiscali.fr>
Subject: Re: Using the touchpad on my laptop
Date: Sun, 24 Apr 2005 09:28:06 +0000 (UTC)
Message-ID: <loom.20050424T112751-730@post.gmane.org>
References: <loom.20050415T115006-986@post.gmane.org> <200504172016.47480.Tobias.Hirning@gmx.de>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="tis-620"
To: linux-newbie@vger.kernel.org

Tobias Hirning <Tobias.Hirning <at> gmx.de> writes:

>=20
> Hi larsene!
> On Friday, 15. April 2005 11:53 larsene wrote:
> > I have a laptop on wich one i have installed debian.
> > My problem is that i can use my touchpad for mouving the cursor,
> > and the buttons under it for left and right click, but i cannot use
> > the "quick touch" fonctionnality (used on windows) for clicking
> > without using the button. How can i configure that?
> Do you know, which touchpad you have?
> If not, please send the output of dmesg.
> Tobias
>=20

Hi larsene!
On Tuesday, 19. April 2005 21:09 you wrote:
> This is the file, hope i twill help you to help me....
It does. Your touchpad is a synaptic-touchpad.
The interesting part of dmesg is this:
#####################
Synaptics Touchpad, model: 1
 Firmware: 4.6
 Sensor: 19
 new absolute packet format
 Touchpad has extended capability bits
 -> multifinger detection
 -> palm detection
input: SynPS/2 Synaptics TouchPad on isa0060/serio1
#####################################
I have also such a thing. I attached my /etc/X11/XF86Config
The most intersting part for you is the first entry for the input=20
devices.=20
It starts with:
Section "InputDevice"
  Driver       "synaptics"
  Identifier   "Mouse[1]"
  Option       "Device" "/dev/psaux"
[...]

Another important thing is the section "Server layout".
Here you have to add/change the entry for your touchpad.
=46or mine it's
Section "ServerLayout"
  Identifier   "Layout[all]"
  InputDevice  "Keyboard[0]" "CoreKeyboard"
  InputDevice  "Mouse[1]" "CorePointer"              <--
  InputDevice  "Mouse[2]" "SendCoreEvents"     <-- these two entries=20
  Screen       "Screen[0]"
EndSection

Try whether you can do the changes on your own, otherwise mail me=20
your /etc/X11/XF86Config
And don't forget to make a copy of your XF86Config before editing. Have=
 a lot of
fun! Tobias

--=20
GPG-Fingerprint: C39E 5381 7721 8613 B5C9  CFAF 54FC B8DB D02D 7085 Reg=
istered
Linux-User #367044 Registered Linux-Machine #262062 http://counter.li.o=
rg Diese
E-Mail wurde mit einer fortgeschrittenen elektronischen Signatur nach =C2=
=A72 2. d)
SigG signiert.



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
