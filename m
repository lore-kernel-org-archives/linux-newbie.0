From: Eric Curtin <ericcurtin17@gmail.com>
Subject: Re: newbie: submitting a driver patch the first time
Date: Tue, 26 May 2020 16:32:14 +0100
Message-ID: <CANpvso4dKjCrf4SY5d90yNo_vsFGtuZ9JfLX7cEkBgpF4DuJMQ@mail.gmail.com>
References: <c5e6a0e0-3825-723e-e791-f24c9d66a419@duagon.com>
Mime-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Ikfnis8dKIkuWMw0k4UNMsPQfmrfz1Vosyi3dTFXf3Y=;
        b=RZthAsY8D3PwmCkOTd88b27mWWr7MtSpiDUBOiRLecJO5w2x4FAni1xEu1wN3CftfX
         4g7MqPPi1HZt0h/nZ3KXw4SbAF1SLsmhEq6p0gBjPsXHN8/ittgnGlZtR2EcTQUMbvXh
         seYRz3LY4pKoJw3fHoh9sQrH4/VbVez2VavaCy0ooEBEmoRv616WeJWUiBpQ+LOkfzs0
         Q5oMNqQavoD90swuJ21NklGOrMGCCWyE1yvsFcw6RHe8KRMTGn0EAzpHeagmhXW9z4UQ
         hgk969HFZD9uhYQOV9QvoEOeC/JwV7d/IhkIZ0gjGhznJuY42hIUyeI6qPUfHK1Dtzi8
         JOaw==
In-Reply-To: <c5e6a0e0-3825-723e-e791-f24c9d66a419@duagon.com>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: =?UTF-8?Q?Gei=C3=9Fler=2C_Andreas?= <andreas.geissler@duagon.com>
Cc: linux-newbie@vger.kernel.org

Hi Andreas,

See the process documentation folder:

https://github.com/torvalds/linux/tree/master/Documentation/process
https://github.com/torvalds/linux/blob/master/Documentation/process/coding-=
style.rst
https://github.com/torvalds/linux/blob/master/Documentation/process/email-c=
lients.rst
https://github.com/torvalds/linux/blob/master/Documentation/process/submitt=
ing-patches.rst

There's a couple of very helpful youtube videos from Greg that
describe the process:

https://www.youtube.com/watch?v=3DLLBrBBImJt4&t=3D24s
https://www.youtube.com/watch?v=3DXXix80GCvpo

Feel free to email this mailing list again if you get stuck!

On Tue, 26 May 2020 at 15:50, Gei=C3=9Fler, Andreas
<andreas.geissler@duagon.com> wrote:
>
> Hello everyone,
>
> I would like to integrate some of our company drivers into the Vanilla Li=
nux kernel, but I have never done this before.
> Some esteemed colleagues did this a few years earlier, but unfortunately =
they are no longer with the company and we lost all information on how to d=
o it.
>
> We want to set up a process to keep the knowledge, but we have to start o=
ver. I am the chosen one who shall do this.
>
> So I read a lot of guidelines and kernel documentation and create a first=
 patch-set of one driver to be submitted. Before going to the actual mailin=
g lists (scripts/get_maintainer.pl), I would like to send this patch-set to=
 the linux-newbie list for hopefully some constructive comments.
>
>
> The driver is a BMC driver that supports the company's generic BMC called=
 "14Y007", which is assembled on many of our hardware components. The BMC i=
s connected via I2C. The driver is a further development of the menf21bmc d=
river, which is already in the kernel.
> The driver is not yet finished and can be adjusted at anytime.
>
> First question: Does it make sense to publish the driver at linux-newbie =
for a review before doing it on the actual mailing lists?
>
> Regards,
> Andreas
>
> --
> Andreas Geissler - Software Engineer
>
> MEN Mikro Elektronik GmbH
> Neuwieder Stra=C3=9Fe 1-7 90411 N=C3=BCrnberg
> Gesch=C3=A4ftsf=C3=BChrer: Dr. Michael Goldbach - Matthias Kamolz - Yilma=
z Kocak - Handelsregister AG N=C3=BCrnberg HRB 5540
>
