From: joy <gracecott@sancharnet.in>
Subject: Re: kernel 2.6.4 report, further assistance requests
Date: Wed, 14 Apr 2004 08:09:10 +0530
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <407CA44E.5020900@sancharnet.in>
References: <Pine.LNX.4.58.0404121355350.673@debian-emach>
 <407B2158.6070702@jpl.nasa.gov> <Pine.LNX.4.58.0404122152500.688@debian-emach>
 <407B7EE3.4000206@comcast.net> <Pine.LNX.4.58.0404130954380.1012@debian-emach>
 <Pine.LNX.4.58.0404131215470.743@debian-emach>
 <Pine.LNX.4.58.0404131814170.4215@debian-emach>
Reply-To: gracecott@sancharnet.in
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; format="flowed"; charset="us-ascii"
To: James Miller <jamtat@mailsnare.net>
Cc: linux-newbie@vger.kernel.org

James Miller wrote:

>Though I'd like to keep using this kernel, there are a couple of things
>that stand in the way: one somewhat minor, but the other a real
>show-stopper.  The show-stopper is vmware: for some reason, I can't get
>its modules to compile under this kernel.  I've done these vmware
>  
>
the modules for the 2.4 style kernels are different from the 2.6 ones 
and I don't think they are
compatible ,i.e, if they compile on a 2.4 they wouldn't compile on a 
2.6. better check for a 2.6
compatible version of vmware. also could you tell me where you can 
download the same?
I've heard a lot about it and want to see what it's about.

>recompiles several times recently for the 2.4.x kernels I've been
>upgrading to, so I know I have all the ingredients in place (e.g.,
>compiler, header files etc).  I tried a very recent patch for vmware, but
>the process continues to abort during make.  If I have to reboot into the
>2.4.25 kernel just to run vmware, I'll have to abandon my 2.6.4 efforts
>for now: it just won't be worth the added hassle.  The other, less serious
>problem (though one that really bugs me), is loss of console beep under
>the 2.6.4 kernel.  echo -e "\a" from the command line gives an extra blank
>line, as though the system is doing something, but I hear no sound.  I ran
>
the system speaker is not governed by alsa. that would be like killing a 
microbe with a road roller actually;-)
cat your .config if you compiled your own kernel or the 
System.map((?)not sure) and grep for speaker
and check if it is enabled on your kernel.

>into this problem on another 2.6.x system I was using and resolved it by
>upping the volume on the PC speaker using alsamixer.  Seems kind of
>backward to me that a sound system like alsa should govern the system
>speaker, but if I could resolve things that easily on this system, I'd do
>it.  alsamixer gives me error messages when I try to run it on this
>machine ("alsamixer:  function snd_ctl_open failed for default: No such
>device") and troubleshooting the whole sound system looks like a big
>headache I just can't get involved in right now.  And besides, I really
>don't care if I get any other sounds than the system speaker out of this
>machine - at least for the time being.  Using alsa to get sound from the
>system speaker looks in this case a bit like trying to kill a gnat with a
>sledgehammer.
>
>Suggestions appreciated, as always.
>
>James
>
cheers,
Joy.MM

>-
>To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
>the body of a message to majordomo@vger.kernel.org
>More majordomo info at  http://vger.kernel.org/majordomo-info.html
>Please read the FAQ at http://www.linux-learn.org/faqs
>
>  
>



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
