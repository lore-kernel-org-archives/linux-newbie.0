From: Chuck Gelm <nc8q@gelm.net>
Subject: Re: ?Copying 'difficult' CD-ROM discs
Date: Sat, 17 Aug 2002 17:22:19 -0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D5EBE8B.2931C3DF@gelm.net>
References: <200208100843.50199.natarajan_k@hotpop.com>
	 <5.1.0.14.1.20020817104733.020ef510@celine> <5.1.0.14.1.20020817131920.020edaa0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: Ray Olszewski <ray@comarre.com>
Cc: linux-newbie@vger.kernel.org

Hi, Ray:

Thanks.

mkisofs -J -r -o some_filename.iso /cdrom/* 

Using SETUP000.EXE;1 for  /setup.exe (setup.exe)
Using READM000.TXT;1 for  /readme.txt (readme.txt)
Using READM000.DOC;1 for  /readme.doc (readme.doc)
Using PATCH000.DLL;1 for  /patchw32.dll (patchw32.dll)
Using LAUNC000.BMP;1 for  /launcher.bmp (launcher.bmp)
mkisofs: Error: /cdrom/wolapi/launcher.bmp and
/cdrom/install/launcher.bmp have the same Rock Ridge name
mkisofs: Error: /cdrom/readme.doc and /cdrom/install/readme.doc have the
same Rock Ridge name
mkisofs: Unable to sort directory 

 I'm off to a corn festival and won't be back for several hours.
If you reply before then, sorry, I won't be able to try
out anything new.  ;-)

Many thanks, Chuck


Ray Olszewski wrote:
> 
> At 02:37 PM 8/17/02 -0400, Chuck Gelm wrote:
> >Hi, Ray:
> >
> >  Thanks.
> >Windows hardware check:
> >My existing windows cd-burn software can burn the
> >Slackware8.0 'install.iso' to blank media and it boots & works fine.
> >  ;-)
> >
> >  Using my Easy-cd-creator v4.02 generates an image file of
> >         112 bytes and fails with an error about creating file
> >000000001.TMP                  :-(
> >^^^^^^^^^^^^^ something like that
> >
> >  Using 'dd if=/dev/cdrom of=./filename.iso' generates a file of
> >   1,699,840 bytes.  :-|
> >
> >  Yet, 'tar -czvf filename.tar.gz /cdrom/*', generates a filesize of
> >561,982,106 bytes.    ;-)
> >
> >  The 'dd' command seems to work with other, friendlier, CD-ROMs.
> >(filesize seems appropriate,
> >  but I haven't burned a CD from them, yet>)
> >
> >:-) So, it is that easy to create .iso images!  :-)
> >
> >  So, it seems that 'dd' is not creating the expected output.
> >What does this indicate.
> 
> At a *guess*, the CD is not pure iso, but instead has a small "outside
> edge" track that an iso imager reads rather than the full disk. That track
> then has some second-stage loader that lets you read the rest of the disk.
> Or maybe the dummy track is just junk and the core of the disk is true iso.
> I haven't actually encountered this sort of setup, but I'm reasoning by
> analogy to that lamebrain system for "protecting" music CDs from ripping
> software that involved putting a small, bogus track on the outside edge.
> 
> In the music case, the workaround was easy, since you didn't need that
> track. Here it is probably harder and may involve specialized understanding
> of the specific disk in question (at least is that small filesystem is
> important to running the disk). In any case, Linux is likely to be no more
> successful here than Windows, at least using its ordinary tools. Sorry.
> 
> One possibility ... if you can mount the disk and see its directories (the
> tar results imply that you can), try
> 
>          mkisofs -J -r -o some_filename.iso /cdrom/*
> 
> This will put the contents of the CD into a true iso image that you can
> burn. Whether the programs there will run from that burned image ... well,
> your guess is as good as mine, but I'd not be optimistic, since it sounds
> like you are encountering some form of deliberate copy protection.
> 
> --
> -------------------------------------------"Never tell me the odds!"--------
> Ray Olszewski                                   -- Han Solo
> Palo Alto, California, USA                        ray@comarre.com
> -------------------------------------------------------------------------------
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
