From: Robin Doer <robin@robind.de>
Subject: Re: files and directories with spaces in bash script
Date: Mon, 26 Mar 2007 17:52:11 +0200
Message-ID: <4607EC2B.3010003@robind.de>
References: <Pine.LNX.4.64.0703261049190.13397@localhost>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <Pine.LNX.4.64.0703261049190.13397@localhost>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: karthikv@Alum.Dartmouth.ORG
Cc: Newbie List <linux-newbie@vger.kernel.org>

Karthik Vishwanath schrieb:
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

IFS=\n # Not tested!!!

> 
> for directory in "$@"; do
>   if [[ -d "$directory" ]]; then
>     for f in `find $directory -iname '*mp3' `; do
>       echo "found mp3 file: $f"
>     done
>   fi
> done


Bash uses the IFS variable for word splitting. (man bash)

HTH,
Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
