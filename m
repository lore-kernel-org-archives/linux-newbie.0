From: Ray Olszewski <ray@comarre.com>
Subject: Re: Debian -> sound modules
Date: Mon, 30 Dec 2002 08:35:54 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <5.1.0.14.1.20021230082006.020ce7b0@celine>
References: <5.1.0.14.1.20021226085851.020b2100@celine>
 <5.1.0.14.1.20021227083019.02107cd0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <3E104742.5030500@rug.ac.be>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"; 
To: linux-newbie@vger.kernel.org

OK. Extracting the soundcard-specific info from what you posted gives u=
s this:

>SoundBlaster=AE and Windows=AE sound compatible (website Dell)
>Sigmatel 9700 audio controller (Laptop users manual)
>Integrated Intell Audio (Windows)
>82801CA/CAM AC'97 Audio controller (Windows)

The Soundblaster reference is marketing bafflegab, but the 82801CA/CAM=20
tells us what you really have. And it seems that you have the correct s=
ound=20
module (i810_audio) for it, based on checking this URL:

         http://www.systura.com/linux/thinkpadr31.html

This is confirmed by your ability to send sound output to /dev/dsp ... =
it=20
believes it is connected to *something*.

Now, with this in place, you report this "problem":

>Finally, the 'overdrive' sound, it's not 'double speed' (I guess), but
>it's a typical 'noise-signal' sound. So:
>
>cat /usr/share/sndconfig/sample.au > /dev/dsp
>
>gives such a noise-signal (overdrive). I really don't know how I can
>describe it another way... I'm sorry about that. The same is true for
>/usr/share/sndconfig/sample2.au and some small wav-files (not all of t=
hem).

I *think* you are saying that sometimes this procedure plays .wav viles=
=20
correctly, but sometimes it does not ... and it "never" (in quotes beca=
use=20
I don't know how many different files you tried) plays .au files correc=
tly.

At this point, I would not rely on "cat" to get the details of sound ri=
ght.=20
"cat" is able to verify that the sound device is present and configured=
,=20
but it is, to put it mildly, not the best way to play music. The Linux=20
Sound HowTo (http://www.tldp.org/HOWTO/Sound-HOWTO/index.html, section =
6.2)=20
notes this:

"Sun workstation (.au) sound files can be played by sending them to the=
=20
/dev/audio device. Raw samples can be sent to /dev/dsp. This will gener=
ally=20
give poor results though, and using a program such as play is preferabl=
e,=20
as it will recognize most file types and set the sound card to the corr=
ect=20
sampling rate, etc."

So I'd suggest you install xmms (or mpg123 or something else you find=20
congenial) and see if it plays sound files (probably .mp3 or .ogg files=
,=20
though I believe xmms can handle .wav too) properly. If not, look at (a=
nd=20
send us relevant portions of, if need be) the error output (run the app=
=20
from an xterm on the console, and redirect STDERR output someplace usef=
ul).

At 02:16 PM 12/30/02 +0100, Kurt Sys wrote:
>OK, thanks, but apparently, I have to try again... So let's try sound =
on
>my laptop. I don't have much information about the hardware, but this =
is
>it (and I've added the 'source of the information' between brackets):
[details deleted]


--
-------------------------------------------"Never tell me the odds!"---=
-----
Ray Olszewski					-- Han Solo
Palo Alto, California, USA			  ray@comarre.com
-----------------------------------------------------------------------=
--------

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
