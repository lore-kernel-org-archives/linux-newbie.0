From: Bill Pleasants <Bill_Pleasants@aaahawk.com>
Subject: starts error
Date: Fri, 13 Sep 2002 14:33:19 -0700
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3D82599F.6F753060@aaahawk.com>
References: <7C078C66B7752B438B88E11E5E20E72E0EF512@GENERAL.farsite.co.uk> <5.1.0.14.1.20020913084016.02317ec0@celine>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Thanks for your kind welcome, Ray.  As for my specific question,
I have not used Linux before. I erased Windows and did an automatic
installation of Mandrake 7.2 on a Packard Bell A950-TWR with a P.B.
monitor 1512SL . The X part failed and the computer boots to the 
command prompt. I tried the kde, gnome and startx commands without 
success. I followed the steps in mandrakeuser.org/docs/xwin/xtroub.html
through running xf86config and manually adding two suggested options.

After entering "startx" I get 
	"execve failed for /etc/X11/X (error 2)
	giving up
	xinit: Connection refused (error 111) unable to connect to X server
        xinit: No such process (error 3): Server error."


      	Processor type: Intel pentium 		Processor speed: 129.6
      	RAM: 16 					
	HD type: ide 				HD capacity: 1.22 
        CD-ROM type: ide (judging by cable)
        Graphic processor: Cirrus CL-GD5430/40 	Video RAM: 1.024
	Sound card: (with modem)	
                                                       
Additional info that may be redundant:
			    The video processor is on the main board. There
                            is a chip labeled CIRRUS 
                            LOGIC CL-GD5430-QC-D. This is connected to
                            a chip labeled VLSI 9531  D43851.

                            The lspcidrake command gave:
                            VLSI: 82C594-AFC2 (unknown ignore)
                            VLSI 82C59617 [WILDCAT] (unknown ignore)
                            CIRRUS LOGIC | GD 5430/40 [ALPINE]
                            (DISPLAY_VGA CARD | CIRRUS LOGIC GD543X)
                            CMD TECHNOLOGY INC. | PCI0640
                            (STORAGE_IDE unknown)

                            SuperProbe gave:
                            SUPER-VGA
                            CHIPS: CIRRUS CL-GD5430/40 (PCI PROBED)
                            1,024 KB
                            RAMDAC: CIRRUS LOGIC BUILT IN
                            15/16/24-BIT DAC
                            6 BIT LOOKUP TABLES

I have spent at least 30 hours searching for interpretations of the
error messages.  If this is available, I would appreciate knowing
where.  I have seen other errors in various logs.  Also if there is a
list of utilities on the machine and what they do like "help" on MS DOS,
I would appreciate learning about it.

Yours truly,
Bill
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
