From: Ray Olszewski <ray@comarre.com>
Subject: Re: help with joining files
Date: Sat, 16 Apr 2005 12:46:42 -0700
Message-ID: <5.1.0.14.1.20050416121116.01f63160@celine>
References: <Pine.LNX.4.21.0504161353590.542-100000@hestia>
 <Pine.LNX.4.21.0504161353590.542-100000@hestia> <Pine.LNX.4.61.0504161157300.5717@localhost.localdomain>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504161157300.5717@localhost.localdomain>
References: <Pine.LNX.4.21.0504161353590.542-100000@hestia>
 <Pine.LNX.4.21.0504161353590.542-100000@hestia>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Just a couple of minor comments, James.

First, though, a preliminary question: have you looked at the command-line 
options for streamripper? I just read its man page, and that says the app 
has these options available:

        -a [file]
               Rip to single file.

        The default mode of operation is to separate the each track into a sep-
        arate  file.   But  sometimes this is not what you want.  Sometimes you
        want the stream recorded to a single (big) file without splitting  into
        tracks.   The -a option does this.  If you use -a without including the
        [file], a timestamped filename will automatically be used.

        -A     Don't create individual tracks.

        The default mode of operation is to create one  file  for  each  track.
        But  sometimes you don't want these files.  For example, you might pre-
        fer a single file (using the -a option), or you want to use  streamrip-
        per  as  a  relay  (using the -r option), without creating these files.
        Using the -A option, the individual files for each track are  not  cre-
        ated.

Won't using these option avoid the problem you have in the first place?

streamrippeer also has options for moving the track-break position, See the 
man page for the details on this ... it will probably require a bit of 
experimenting in any case.

At 12:27 PM 4/16/2005 -0500, James Miller wrote:
[...]
>  I'm now using the "ls -l partial_file_name <tab>" to get the salient 
> information in a more discrete place from which I can copy and paste. I 
> do have to do some "ls partial_file_name <tab>ing" to even get to the 
> point where I can use ls -l (-l gives me the time information I need in 
> order to cat things together in the right order), but I've already 
> reduced the number of steps to get full_piece.mp3.

Depending on the *exact* problem you are having, the alternative approach 
of using
         ls -l | grep partial_file_name

may give you better results.

>>Personally I would have renamed each file correctly according to the
>>task I wanted to preform right from the start, thus to include
>>the last modified UTC time in the filename. That way you can list each
>>file belonging to a certain group `sort -n' them by time and concat them
>>as appropiate.
>
>Good idea. I'm just technically-challenged enough that I have no idea how 
>to do this (or even where to start) where it concerns recording streaming 
>audio. I suppose I'd need to make streamripper run as part of a larger 
>script that would likewise invoke Flemming's remove_invalid, etc. Mind 
>boggling!

While J's suggestion *sounds* reasonable, in fact it pretty much ignores 
the fact that you are dependent ... and least for starters ... on (a) what 
name data the radio station provides and (b) what streamripper is set up to 
do with it. From the examples you've provided, I'd guess that the radio 
station is giving you names in, or close to, the format the the FreeDB CDDB 
servers use.

Those names *can* be preprocessed into filenames more gracefully than 
streamripper seems to ... for example, abcde (the standard CD-ripping 
wrapper script on Linux, which in turn calls a bunch of task-specific apps 
for getting tracklists, ripping to wav, encoding to mp3 or orr, and so 
forth) includes some preprocssing capability. ot enough to number 
movements, though (unless the number is part of the name); for example, a 
multi-movement Gershwin piece I ripped shows up as

         Concerto_In_F_for_Piano_and_Orchestra_-_Adagio.ogg
         Concerto_In_F_for_Piano_and_Orchestra_-_Allegro.ogg
         Concerto_In_F_for_Piano_and_Orchestra_-_Allegro_agitato.ogg

BTW, abcde uses a script to process CDDB tracknames into more 
Unix-friendlty filenames. Here's the man-page excerpt describing the function:

        mungefilename
               mungefilename() is an abcde shell function that can be  overrid-
               den  via  abcde.conf.  It  takes CDDB data as $1 and outputs the
               resulting filename on stdout.  It  defaults  to  eating  control
               characters,  apostrophes  and question marks, translating spaces
               and forward slashes to underscores, and translating colons to an
               underscore and a hyphen.
               If  you modify this function, it is probably a good idea to keep
               the forward slash munging (UNIX cannot store a file with  a  '/'
               char in it) as well as the control character munging (NULs can't
               be in a filename either, and newlines and such in filenames  are
               typically not desirable).

And here is the actual function in its entirety:

         mungefilename ()
         {
                         echo "$@" | sed s,:,\ -,g | tr \ /\* __+ | tr -d 
\'\"\?\[:cntrl:\]
         }

After writing the above, I checked a bit into what parsing options 
streamripper has. It has an option, -w, that can be used to provide parsing 
rules. Look at the file parse-rules.txt (location distro depsndent; on 
Debian, look in /usr/share/doc/streamripper) for the details. The syntax of 
this file is a bit different from sed or tr or whatever, but you might be 
able to adapt the abcde rule to its syntax and get tidy filenames out of 
the box that way.





-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
