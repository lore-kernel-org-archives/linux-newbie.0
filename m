From: Haines Brown <brownh@hartford-hwp.com>
Subject: Re: I killed user's x server
Date: Sat, 23 Nov 2002 07:49:01 -0500
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200211231249.gANCn1F17018@hartford-hwp.com>
References: <5.1.0.14.1.20021121103403.02116350@celine> <1037954445.1994.6.camel@zebra.vil.ite.mee.com> <200211221935.gAMJZIW09438@hartford-hwp.com> <200211231534.36248.genright@paradise.net.nz>
Return-path: <linux-newbie-owner@vger.kernel.org>
In-reply-to: <200211231534.36248.genright@paradise.net.nz> (message from glenn
	on Sat, 23 Nov 2002 15:34:36 +1300)
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: genright@paradise.net.nz
Cc: linux-newbie@vger.kernel.org

> My understanding is that the XF86Config-4 config file is for the 4.2 server 
> and the XF86Config file is for older 3.x version of X. The reason for the 
> name change is the slightly different naming conventions for some of the 
> configuration blocks, like mouse and keyboard definitions.
> 
> Use 'man XF86Config' for more details on this. The files will look fairly 
> similar for video card and screen definitions, but the -4 version should be  
> easier to read and understood. 
> 
> You can choose which card drivers and screen drivers are loaded in this config 
> file.

Yes, but the problem is that I'm using a configuration file that tries
to load deprecated libraries. I could edit it not to do so if I knew
what I were doing.
 
> Did you have more than one version of X installed? 

I fear I may now, but don't know. I do I know? The new driver I
installed in 4.2.1, and the startx log says it is 4.2.1, and so I know
that I'm running the new version of XFree86. I don't know how to check
if the old version is still installed, but since I'm calling an old
configuration file (ie., a configuration that tries to load deprecated
libraries), I may be stuck in mid-stream, where a new driver is using
a deprecated configuration file.
 
> Did you try installing from source rather than binary rpms?

It was highly reommended to install using the supplied installation
script. 

====

When I updated the XFree86 driver, which was the first thing I tried
when I began to experience problems (and I was told to do so by
startx), It was highly recommended that I use a supplied installation
script (its name is  sh Xinstall.sh) (see the chunk below).  

From this experience, I get the impression that the configuration file
would be renamed from XF86Config-4 to XF86Config, but I can't verify
where I got that impression (from the XF86 web page?). Your point may
be true, but if so, the driver update reverts to the old name, it
seems. However, there's no mention of the config file in the
installation script.

Looking at this install script, I see that pex5, xie (the two
deprecated libraries I've had trouble with) and glx are labelled "old
modules" (OLDMODULES variable). 

I don't quite undestand the following, but it seems it should have
removed deprecated modules from being loaded, but it fails. If indeed
I use XFConfig-4 and now should be using a new XFConfig file, then that's
the problem, and something may need to be done by hand. The
implication below is that the old modules will conflict with with
XFree86 4.*, but I'm not clear about what the script's doing about it.
RunDir is usr/X11R6, but there's now no /usr/X11R6/lib/modules/old
directory. I was not prompted during install to move deprecated
modules out of the way.

# Finally, check for old 3.3.x modules that will conflict with 4.x
if [ -d $RUNDIR/lib/modules ]; then
	for i in $OLDMODULES; do
		if [ -f $RUNDIR/lib/modules/$i ]; then
			ModList="$ModList $i"
		fi
	done
	if [ X"$ModList" != X ]; then
		echo ""
		echo "The following 3.3.x X server modules were found in"
		echo "$RUNDIR/lib/modules, and they may cause problems when running"
		echo "$VERSION:"
		echo ""
		echo "  $ModList"
		echo ""
		echo "Do you want them moved to $RUNDIR/lib/modules/old?"
		echo "Note: that if you want to use them with 3.3.x again, you'll"
		Echo "need to move them back manually. (y/n) [n] "
		read response
		case "$response" in
		[yY]*)
			if [ ! -d $RUNDIR/lib/modules/old ]; then
				echo ""
				echo "Creating $RUNDIR/lib/modules/old"
				mkdir $RUNDIR/lib/modules/old
			else
				echo ""
			fi
			if [ -d $RUNDIR/lib/modules/old ]; then
				for i in $ModList; do
					echo "Moving $i to $RUNDIR/lib/modules/old"
					mv $RUNDIR/lib/modules/$i $RUNDIR/lib/modules/old/$i
				done
			else
				echo "Failed to create directory $RUNDIR/lib/modules/old"
			fi
			;;
		*)
			echo ""
			echo "Make sure that you rename, move or delete the old modules"
			echo "before running $VERSION."
		esac
	fi
	# Some distributions have old codeconv modules
	if [ -d $RUNDIR/lib/modules/codeconv ]; then
		if [ -f $RUNDIR/lib/modules/codeconv/ISO8859_1.so ]; then
			echo ""
			echo "Warning: it looks like there are some old *.so modules"
			echo "in $RUNDIR/lib/modules/codeconv.  You may need to rename,"
			echo "move or delete them if you use the xtt font module."
		fi
	fi
fi


The man XFConfig and XFree86 were focused on manipulation of the
configuration files. I might simply remove from XFConfig-4 any calls
to the deprecated modules, and that might do it, but I'm nervous about
trying it. I may get my courage up today.

Haines
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
