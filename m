From: Jim Reimer <jdr@wa5rrh.org>
Subject: Re: File names with spaces
Date: Tue, 18 Feb 2003 07:59:09 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3E523C2D.2050101@wa5rrh.org>
References: <20030218093623.1FB578D8FE@basicbox3.server-home.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: robin@robind.de
Cc: linux-newbie@vger.kernel.org

robin@robind.de wrote:
> 
> A solution should look like this:
> 
> for file in `ls -1`; do
>   newfile=`echo "$file" | sed 's/ /_/'`
>   echo "File is named ${file}"
>   echo "The new file is named ${newfile}"
> 
>   mv "$file" "$newfile"
> done
> 
> IHMO in the main-loop it is better to choose "ls -1", so the field
> separator is \n and there's only one filename in each line.
> The next <big> thing is to put the filename into quotations. Now a
> filename, even with spaces, will be interpreted as one word.

Robin, that still doesn't work right - try it and see:

$echo > file\ 001
$echo > file\ 002
$ ./test.sh
File is named file
The new file is named file
File is named 001
The new file is named 001
File is named file
The new file is named file
File is named 002
The new file is named 002
$

The previously referenced Bash Scripting Guide has the answer.
Change the for statement to read:
for file in *; do
and it will work.

$ ./test.sh
File is named file 001
The new file is named file_001
File is named file 002
The new file is named file_002
$

-jdr-






-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
