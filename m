From: Karthik Vishwanath <karthikv@Alum.Dartmouth.ORG>
Subject: files and directories with spaces in bash script
Date: Mon, 26 Mar 2007 10:59:17 -0400 (EDT)
Message-ID: <Pine.LNX.4.64.0703261049190.13397@localhost>
Reply-To: karthikv@Alum.Dartmouth.ORG
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: TEXT/PLAIN; charset="us-ascii"; format="flowed"
Content-Transfer-Encoding: 7bit
To: Newbie List <linux-newbie@vger.kernel.org>

Hello,

I am trying to write a script to organize/sort my music collection. All of 
my music is arranged as Artist/Album folders with tracks within them, and 
most of these names have spaces (if not other strange characters). The 
script I am trying to get working needs to get all filenames in a 
specified directory so that I can process each file at a time. I am trying 
to do this as:

#!/bin/bash
# set_idv3_tags.sh

for directory in "$@"; do
   if [[ -d "$directory" ]]; then
     for f in `find $directory -iname '*mp3' `; do
       echo "found mp3 file: $f"
     done
   fi
done


Obviously, $f is getting word-split at each space encountered in 
$directory as well as in the filename. How can I set bash to give me an 
array/variable that I loop over for each file found only, irrespective of 
spaces without using sed to replace the spaces with _ etc.?

I did think of -print0, but could not get to loop over each file and I 
prefer not to use ls. What are my options with bash, or is it just better 
to get this written with Perl?


Thanks!

-K

-- 
The only way to keep your health is to eat what you don't want, drink
what you don't like, and do what you'd rather not.  -- Mark Twain
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
