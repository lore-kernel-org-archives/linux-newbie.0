From: beolach@juno.com
Subject: Re: CD formats
Date: Thu, 24 Jul 2003 17:29:52 GMT
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030724.103039.16315.936943@webmail02.lax.untd.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: cr@orcon.net.nz
Cc: linux-newbie@vger.kernel.org


I really don't have much experiencec with Macs, so I couldn't
tell you what CD formats they can read.  But from my experience
with burning CDs, I would recommend using Joliet.  Basically,
the wat Joliet works actually does not invalidate the iso9660
8.3 filenames; it just provides alternative long filenames that
a Joliet capable OS uses instead of the 8.3 filenames.  If a
Joliet CD is used in an non-Joliet capable OS, it will just
fall back on the 8.3 filenames.  I have never actually seen a
Joliet CD in a non Joliet capable OS, but I would guess it may
look a little different than normal, with extra files and such,
but I think it should be completely usable.

Here's a quote from the mkisofs man page about Joliet:
  -J  Generate Joliet directory records  in  addition  to
      regular iso9660 file names.  This is primarily use-
      ful when the discs are to be used on Windows-NT  or
      Windows-95  machines.   The  Joliet  filenames  are
      specified in Unicode and each path component can be
      up to 64 Unicode characters long.  Note that Joliet
      is no standard - CD's that use only  Joliet  exten-
      sions  but  no  standard  Rock Ridge extensions may
      usually only be used on  Microsoft  Win32  systems.
      Furthermore,  the  fact that the filenames are lim-
      ited to 64 characters and the fact that Joliet uses
      the  UTF-16  coding  for  Unicode characters causes
      interoperability problems.

Again I want to point out that I basically have no Mac experience,
but as I was reading over the mkisofs man page, I noticed a
section on "HFS Macintosh File Formats" which seems to describe
a Macintosh parallel to Joliet.  I really don't know what HFS is,
but it might be something you want to look into if you plan on
making a lot of hybrid CDs.  See the man 8 mkisofs page for more
details on HFS or Joliet.

Hope this helps more than it confuses,
Conway S. Smith

--- cr <cr@orcon.net.nz> wrote:
> I hope this isn't too OT -
> 
> I'm going to use X-cd-roast on this Debian box to make a CD to
> send to an 
> acquaintance who has a Mac  (mostly scanned JPG's of photos).
> 
> If I understand correctly, I could use long filenames (Joliet) if
> intended 
> for a Windoze machine, but for a Mac I can only use 8.3 filenames.    > Is that 
> correct, or is there any way around that?
> 
> Regards
> 
> Chris

________________________________________________________________
The best thing to hit the internet in years - Juno SpeedBand!
Surf the web up to FIVE TIMES FASTER!
Only $14.95/ month - visit www.juno.com to sign up today!
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
