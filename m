From: beolach@juno.com
Subject: Re: suddenly the "device" identification changed
Date: Sat, 21 Jun 2003 21:47:15 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030621.214715.1932.0.beolach@juno.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: hammer@revobild.net
Cc: linux-newbie@vger.kernel.org

What I would guess happened is somehow your IDE channels got reversed.
This an option designed for those (like myself) who have their main
disk drives on an offboard IDE controller. On a "normal" setup, the
motherboards onboard IDE controller's two channels would be ide0
and ide1, and any offboard controllers (which, on a laptop, you would
most likely not have) would have channels ide2 and ide3.  If the
option to reverse the IDE channels is selected, ide0 is swapped with
ide2, as are ide1 and ide3.  This also affects the drive device ids.
I will try to diagram this below.

Normal setup           | Reversed setup
Onboard controller     | Onboard controller
   ide0                |    ide2
      hda              |       hde
      hdb              |       hdf
   ide1                |    ide3
      hdc              |       hdg
      hdd              |       hdh
Offboard controller    | Offboard controller
   ide2                |    ide0
      hde              |       hda
      hdf              |       hdb
   ide3                |    ide1
      hdg              |       hdc
      hdh              |       hdd

As to what caused the IDE channels to become reversed, I have no idea.
Obviously uninstalling Netscape should have absolutly no effect on the
IDE channels, nor would M$ Windows or DOS.  The only ways I know of to
reverse the IDE channels is to pass "ide=reverse" to the kernel at the
boot prompt (or in an append in lilo.conf), or to recompile the kernel
with the option to reverse the channels.  You can use dmesg to check
whether or not "ide=reverse" was passed to the kernel.  If it was,
just remove it (probably from /etc/lilo.conf, if you use lilo).  If it
is not present, try passing it to see if it reverses it back to the
usual way.

On your upcoming battle to install Mozilla, the missing dependancies
might possibly have been removed when you uninstalled Netscape, but I
would guess that that would be highly unlikely.  I have no experience
with Mandrake, so I don't know how it's package system works.

Wishing you luck,
Conway S. Smith


On 22 Jun 2003 Heimo Claasen <hammer@revobild.net> writes:
> Here's a puzzling qestion.
> (not to Ray, as the description of what happened comes from a 
> 3-years
> newbie still lacking the required 30-years-Unix-culture-acquaintancy
> and thus is absolutely inable and inapt to use [a] correct 
> terminology
> [b] in an exactly rules compatible logical arrangement of said words
> which [c] would make it indeed totally redundant to ask as, in that
> case heing, the stupid newbie anyway would know everything already.)
> 
> Case is/was a (after all, rather well working) installation of 
> Mandrake 8.1
> inluding the use of KDE 2.0 on a not-so-new Toshiba laptop with 
> built-in
> CD-Rom drive. In an onset of total madness I threw out the installed
> packages for Nut$crape 4.78 and the installed, but yet unused, 
> package
> of Mozilla 0.9(-.one or .23 something, earlier in any case) - the 
> idea was
> to install the RPM-package for Mozilly 0.98 which runs perfectly 
> well on
> another install of Mdk 8.2 (on a desktop box) and does indeed 
> excellently
> all the brwoser tasks I need/use there.
> 
> Using Mdk's "Package Manager" to try to install that Mozilla 0.98 
> RPM from
> the Mdk-8.2 CDs, it could not find the CD drive any more. In fact, 
> the
> whole Mdk-8.1-install all of a sudden could not access the CD-ROM
> derive any more. HOWEVER, the laptop would well boot up from any of 
> the
> two sets of installation CDs - though would not do _anything_ more 
> at
> all, complaining about a "missing (CD-ROM) device".
> 
> MANY hours and trials later, and using the - still - well working 
> old
> Mdk-8.1 install, I found by more or less haphazard use of one of the
> diagnostic tools (none of the others had told me that before) that 
> the
> built-in CD-Rom now is identified as "/dev/hd_g_"; instead of the
> "/dev/hd_c_" as which it had been seen and mounted all the time 
> before.
> (REM for Ray: emphasis has been added by the writer of these lines 
> and
> had not been displayed by the various utilities employed/abused.)
> To note well is in addition that all those tools "detected" the 
> "Toshiba
> CD-ROM-XM_1602BV" with "Bus Type: Atapi/IDE".
> 
> Changing the mount line in "/etc/fstab" for the CD-ROM in the old 
> install
> appropriately, did make indeed the laptop boot up and use the CD-ROM 
> drive
> normally and ordinary as before - it then even did the "upgrade" run 
> with
> the (very relatively) newer install-CDs (although the Mozilla from 
> there
> would _not_ install, depending on a long number of dependency 
> conflicts
> with KDE-specific things installed suddenly appearing; but that 
> seems to
> be again a completely different development and new story.)
> To repeat: _nothing_ else was changed, neither in the BIOS (this 
> Toshiba
> shows three possible address/irq combinations for CD drives) nor in 
> the
> whole setup of the Mdk-Linux install.  Intermittant reboots into 
> Win$
> and DOS (both of them are installed there too, and I made the DR-DOS
> boot/partition recognise the CD-ROM as well) regularly aggreed to
> access the CD-ROM drive duely and just as before.
> 
> So what happened ? Is there any explanation ?
> 
> Would there be any means that could have avoided ca. six hours of
> perfectly useless (and needless) frustration ?
> 
> And I'm facing another round of that latter. After all, I have to 
> re-install
> a pseudo-"graphical" browser on that box again, because this is one 
> of
> the key uses/functions for certain tasks it's needed for. The only
> alternative would be that M$-I-Exploder indeed.
> 
> // Heimo Claasen //<revobild at revobild dot net>// Brussels 
> 2003-06-21
> The WebPlace of ReRead - and much to read  ==>  
> http://www.revobild.net
> 
> -
> To unsubscribe from this list: send the line "unsubscribe 
> linux-newbie" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html
> Please read the FAQ at http://www.linux-learn.org/faqs
> 
> 

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
