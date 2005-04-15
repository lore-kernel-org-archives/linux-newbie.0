From: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Subject: Re: convert windows file names
Date: Fri, 15 Apr 2005 17:15:52 +0200
Message-ID: <425FDAA8.4060502@vip.cybercity.dk>
References: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.61.0504150930530.5717@localhost.localdomain>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie <linux-newbie@vger.kernel.org>
Cc: James Miller <jamtat@mailsnare.net>

James Miller wrote:
> Among various frustrations recently I've had the gratifying success of 
> learning how to use streamripper to augment my music collection. 
> Streamripper is a program that writes an audio stream (e.g., from 
> internet radio) to your hard drive as an mp3 file. This is about the 
> closest thing to the mythical "Rivo" (Tivo for radio) that currently 
> exists, I think, and could maybe serve as the basis for a *real* 
> Rivo-type program, should someone really decide to develop one.
> 
> Despite the success, there are some problems--mainly having to do with 
> file names. I've found a nice commercial-free classical (Baroque) 
> station and have been happily recording away for the last 24 hrs or so. 
> The streamripper program was evidently written for rock or more popular 
> genres and tries to detect breaks between songs so as to make discrete 
> files from them. For whatever strange reason, it has a problem detecting 
> beginnings and endings between movements in classical music (despite the 
> noticeable pause) and wants to break between movements about 30 seconds 
> into the next movement, rather than at the pause. The cat command seems 
> to fix this, though:
> 
> cat movement1.mp3 >full-piece.mp3
> cat movement2.mp3 >>full-piece.mp3
> cat movement3.mp3 >>full-piece.mp3
> 
> The breaks at 30 seconds into the following movement are hardly even 
> noticeable in the full-piece.mp3 (I don't have the kind of purist 
> standards I used to when it comes to audio quality, though).
> 
> But, on to file names. unfortunately, the names for the pieces I'm 
> recording from this station follow Windows long-file-naming conventions. 
> Even worse, the names tend to be quite complex and long. Here are a 
> couple of examples:
> 
> Anton\ Reicha-\ Albert\ Schweitzer\ Quintett\ -\ Wind\ Quintet\ No.9\ 
> in\ D\ major\ Op.91\ No.3-\ Finale-\ Allegretto.mp3
> 
> Patrick\ Cohen\ \&\ Mosaiques\ Quartet\ -\ Quintet\ For\ Piano\ \&\ 
> Strings\ In\ D\ Major\,\ Op.565\,\ G411\ -.\ Andante\ Come\ Prima.mp3
> 
> Feeding those names to cat so I can join the movements into a single 
> file is going to be a major pain in the wazoo, as they say down at 
> symphony hall. What I was hoping to find is a script that would 
> automatically convert all the wierd characters into more standard Unix 
> file-naming characters. But so far I've come up empty-handed. Can anyone 
> point me to some utility that might do what I need?
> 
> As a last resort, I might try to write my own script. I'm not too hot on 
> doing that though, since I'm at an extremely rudimentary level when it 
> comes to script writing. If it comes to that, could someone maybe help 
> me get started by giving an example for a script that would do the 
> renaming I want? I'd like to retain the bulk of the information, though 
> I don't mind truncating words at, say 5 letters. I suppose the main 
> thing would be replaing all the spaces and/or punctuation with dashes 
> and/or underscores.
> 
> Thanks, Jam
> es

You can use my little perl script for that.

#!/usr/bin/perl


# remove_invalid - Removes invalid characters from filenames.
# Copyright (C) 2004  Flemming Greve Skovengaard
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.


# File:					remove_invalid
# Version:				0.4.6
# Date (YYYY-MM-DD):	2004-07-24
# Author:				Flemming Greve Skovengaard
# Contact:				dsl58893@vip.cybercity.dk

## Version 0.1.0	
## Date: 2004-04-15
##		Replaces spaces with underscores.
##
## Version 0.2.0
## Date: 2004-05-13
##		Replaces !, @, $, & (, ), {, }, [, ], <, >, ' and ".
##
## Version 0.3.0
## Date 2004-05-14
##		Removes any leading - (minus/dash).
##
## Version 0.4.0
## Date: 2004-05-15
##		Added option 'verbose' and 'help'.
##		Added 'Files renamed: x'.
##
## Version 0.4.1
## Date: 2004-05-15
##		Added option 'version'.
##
## Version 0.4.2
## Date: 2004-05-15
##		Removes ,'s (comma).
##
## Version 0.4.3
## Date: 2004-06-29
##		Uses File::Basename to get basename if --help
##
## Version 0.4.4
## Date: 2004-07-23
##		Simplified substitute procedure.
##
## Version 0.4.5
## Date: 2004-07-23
##		Now removes ':' and ';'.
##
## Version 0.4.6
## Date: 2004-08-03
##		Correctly removes '!' and '$'.

## Removes all invalid characters in filenames in the current directory.

use strict;
use warnings;
use Getopt::Long;
use File::Basename qw/ basename /;

Getopt::Long::Configure("gnu_getopt");

my ($verbose, $help, $version);
my $current_version = "0.4.6";    # REMEMBER TO UPDATE.
my $dir = '.';
my $num_renamed = 0;

GetOptions('v|verbose' => \$verbose,
		   'help' => \$help,
		   'V|version' => \$version,
);

if ($help) {
	print "Version: $current_version\n";
	print "Usage: ", basename($0), " [-v|--verbose]\n";
	exit 0;
}

if ($version) {
	print "File:\t\tremove_invalid.pl\n";
	print "Version:\t$current_version\n";
	print "Written by Flemming Greve Skovengaard.\n";
	exit 0;
}

sub rename_file {
	my ($old, $new) = @_;
	
	rename $old, $new
	or warn "Could not rename '$old' to '$new': $!\n";
	
	return 0;
}

opendir DH, $dir or die "Cannot opendir '$dir': $!\n";

foreach my $file (sort readdir DH) {
	my $new_name = $file;
	my $rename_failed = 1;
	
	if ($new_name =~ m/(^[-+]|[ (){},'":;<>\!\$\&\@\[\]|])/) {
		$new_name =~ s/^[-+]//;
		$new_name =~ s/ /_/g;
		$new_name =~ s/,/./g;
		$new_name =~ s/\@/_at_/g;
		$new_name =~ s/\&/_and_/g;
		$new_name =~ s/['":;\$\!]//g;
		$new_name =~ s/[({<]/_ld_/g;
		$new_name =~ s/[)}>]/_rd_/g;
		$new_name =~ s/\[/_ld_/g;
		$new_name =~ s/\]/_rd_/g;
		
		if ($verbose) {
			print "'$file' => '$new_name'\n";
			$rename_failed = rename_file($file, $new_name);
		}
		else {
			$rename_failed = rename_file($file, $new_name);
		}
		++$num_renamed unless $rename_failed;
	}
}

print "Files renamed: $num_renamed\n";

-- 
Flemming Greve Skovengaard           FAITH, n.
a.k.a Greven, TuxPower                   Belief without evidence in what is told
<dsl58893@vip.cybercity.dk>              by one who speaks without knowledge,
4112.38 BogoMIPS                         of things without parallel.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
