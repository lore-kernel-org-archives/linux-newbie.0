From: robin@robind.de
Subject: Re: File names with spaces
Date: Tue, 18 Feb 2003 10:36:23 +0100 (CET)
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030218093623.1FB578D8FE@basicbox3.server-home.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7BIT
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

> I am trying to write a bash shell script that
> will translate spaces in file names into
> underline characters. This is the script as I
> have it now: 
>
> for file in `ls` 
> do 
> echo $file 
> newfile=`ls ${file} | tr '[:space:]' '[_*]'` 
> echo File is named ${file} 
> echo The new file is named ${newfile} 
> # [[ -s $newfile ]] || (mv $file $newfile) 
> sleep 2 
> done 

A solution should look like this:

for file in `ls -1`; do
  newfile=`echo "$file" | sed 's/ /_/'`
  echo "File is named ${file}"
  echo "The new file is named ${newfile}"

  mv "$file" "$newfile"
done

IHMO in the main-loop it is better to choose "ls -1", so the field
separator is \n and there's only one filename in each line.
The next <big> thing is to put the filename into quotations. Now a
filename, even with spaces, will be interpreted as one word.

Hope it helps,
Robin
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
