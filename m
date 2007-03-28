From: Flemming Greve Skovengaard <dsl58893@vip.cybercity.dk>
Subject: Re: files and directories with spaces in bash script
Date: Wed, 28 Mar 2007 20:10:48 +0200
Message-ID: <460AAFA8.9000208@vip.cybercity.dk>
References: <Pine.LNX.4.64.0703261049190.13397@localhost>
Mime-Version: 1.0
Content-Type: multipart/mixed;
 boundary="------------060804060905060601060206"
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0703261049190.13397@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
To: linux-newbie <linux-newbie@vger.kernel.org>

This is a multi-part message in MIME format.
--------------060804060905060601060206
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Karthik Vishwanath wrote:
> Hello,
> 
> I am trying to write a script to organize/sort my music collection. All 
> of my music is arranged as Artist/Album folders with tracks within them, 
> and most of these names have spaces (if not other strange characters). 
> The script I am trying to get working needs to get all filenames in a 
> specified directory so that I can process each file at a time. I am 
> trying to do this as:
> 
> #!/bin/bash
> # set_idv3_tags.sh
> 
> for directory in "$@"; do
>   if [[ -d "$directory" ]]; then
>     for f in `find $directory -iname '*mp3' `; do
>       echo "found mp3 file: $f"
>     done
>   fi
> done
> 
> 
> Obviously, $f is getting word-split at each space encountered in 
> $directory as well as in the filename. How can I set bash to give me an 
> array/variable that I loop over for each file found only, irrespective 
> of spaces without using sed to replace the spaces with _ etc.?
> 
> I did think of -print0, but could not get to loop over each file and I 
> prefer not to use ls. What are my options with bash, or is it just 
> better to get this written with Perl?
> 
> 
> Thanks!
> 
> -K
> 

You can use my Perl script written for the same purpose. The options are
'-r' and '-v' as in recursive and verbose, respectively.

I have attached the script to the mail. Hope it helps.

-- 
Flemming Greve Skovengaard                   Just a few small tears between
a.k.a Greven, TuxPower                       Someone happy and one sad
<dsl58893@vip.cybercity.dk>                  Just a thin line drawn between
4011.25 BogoMIPS                             Being a genius or insane

--------------060804060905060601060206
Content-Type: text/plain;
 name="remove_invalid"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline;
 filename="remove_invalid"

#!/usr/bin/perl

# remove_invalid - Removes invalid characters from filenames.
# Copyright (C) 2004-2005  Flemming Greve Skovengaard
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


# File:                 remove_invalid
# Version:              0.5.0
# Date (YYYY-MM-DD):    2006-11-29
# Author:               Flemming Greve Skovengaard
# Contact:              dsl58893@vip.cybercity.dk

## Version 0.1.0    
## Date: 2004-04-15
##      Replaces spaces with underscores.
##
## Version 0.2.0
## Date: 2004-05-13
##      Replaces !, @, $, & (, ), {, }, [, ], <, >, ' and ".
##
## Version 0.3.0
## Date 2004-05-14
##      Removes any leading - (minus/dash).
##
## Version 0.4.0
## Date: 2004-05-15
##      Added option 'verbose' and 'help'.
##      Added 'Files renamed: x'.
##
## Version 0.4.1
## Date: 2004-05-15
##      Added option 'version'.
##
## Version 0.4.2
## Date: 2004-05-15
##      Removes ,'s (comma).
##
## Version 0.4.3
## Date: 2004-06-29
##      Uses File::Basename to get basename if --help
##
## Version 0.4.4
## Date: 2004-07-23
##      Simplified substitute procedure.
##
## Version 0.4.5
## Date: 2004-07-23
##      Now removes ':' and ';'.
##
## Version 0.4.6
## Date: 2004-08-03
##      Correctly removes '!' and '$'.
##
## Version 0.4.7
## Date: 2005-04-15
##      Simplified the if-statement in the foreach-loop.
##      Characters that is not a hyphen, word character or a period
##          are removed.
##
## Version 0.4.8
## Date: 2006-06-11
##      Now replaces '%20' with '_'
##
## Version 0.5.0
## Date: 2006-11-29
##      Recursive option added.

## Removes all invalid characters in filenames in the current directory
## and subdirectories.

use strict;
use warnings;
use Getopt::Long;
use File::Basename qw/ basename /;

Getopt::Long::Configure("gnu_getopt");

my ($verbose, $help, $version, $recursive);
my $current_version = "0.5.0";    # REMEMBER TO UPDATE.
my $dir = '.';
my $num_renamed = 0;

GetOptions(
    'v|verbose' => \$verbose,
    'help'      => \$help,
    'V|version' => \$version,
    'r'         => \$recursive,
);

if ($help) {
    print "Version: $current_version\n";
    print "Usage: ", basename($0), " [-v|--verbose] [-r]\n";
    exit 0;
}

if ($version) {
    print "File:\t\tremove_invalid\n";
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

sub clean_file_name {
    my $old_name = shift;
    my $new_name = $old_name;
    my $rename_failed = 1;

    $new_name =~ s/^[-+]//;
    $new_name =~ s/ /_/g;
    $new_name =~ s/,/./g;
    $new_name =~ s/\@/_at_/g;
    $new_name =~ s/\&/_and_/g;
#   $new_name =~ s/['":;\$\!]//g;
    $new_name =~ s/[({<]/_ld_/g;
    $new_name =~ s/[)}>]/_rd_/g;
    $new_name =~ s/\[/_ld_/g;
    $new_name =~ s/\]/_rd_/g;
    $new_name =~ s/(?:%20)/_/g;
    $new_name =~ s/[^-+\w.]//g;

    print "'$old_name' => '$new_name'\n" if $verbose;
    $rename_failed = rename_file($old_name, $new_name);
    ++$num_renamed unless $rename_failed;
}

sub remove_invalid {
    my $dir = shift;

    opendir my $dir_handle, $dir or die "Cannot opendir '$dir': $!\n";

    foreach my $file (sort readdir $dir_handle) {
        next if $file =~ /^\.{1,2}$/;
        if ($recursive && -d $file) {
            chdir $file;
            remove_invalid(".");
            chdir "..";
        }
        if($file =~ m/(?:^-|[^-+\w.])/) {
            clean_file_name($file);
        }
    }
    closedir $dir_handle;
}

remove_invalid($dir);

print "Files renamed: $num_renamed\n";

--------------060804060905060601060206--
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
