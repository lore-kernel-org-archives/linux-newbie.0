From: dalgoda@ix.netcom.com (Mike Castle)
Subject: Re: File names with spaces
Date: Fri, 28 Feb 2003 15:46:53 -0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <d095jxhei.ln2@thune.mrc-home.org>
References: <20030218093623.1FB578D8FE@basicbox3.server-home.net>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

In article <20030218093623.1FB578D8FE@basicbox3.server-home.net>,
 <robin@robind.de> wrote:
>for file in `ls -1`; do
>  newfile=`echo "$file" | sed 's/ /_/'`
>  echo "File is named ${file}"
>  echo "The new file is named ${newfile}"
>
>  mv "$file" "$newfile"
>done

>
>IHMO in the main-loop it is better to choose "ls -1", so the field
>separator is \n and there's only one filename in each line.

ls should detect that stdout is not a terminal and fall back to -1
automatically.  Granted, it can't hurt, but should be unnecessary.

However, a few comments.

First, why use ls at all?  Might as well use:
for file in *; do

Of course, since you are only interested in files with spaces in them,
while not limit to that in the first place?

mcastle@dl-mcastle[03:37pm]~/foo(776) for file in *; do echo $file; done
a b
bar
mcastle@dl-mcastle[03:37pm]~/foo(777) for file in *\ *; do echo $file; done
a b

Of course, if you have a lot of files, this technique simply doesn't work
as you'll overflow your max command line length.

You could go back to:
ls | while read; do

But you're processing every file again.

Another alternative might be something like:

find -name '* *' -maxdepth 1

I think maxdepth is gnu find specific, so keep that in mind (I don't have
access to any non-gnu systems to test).

>The next <big> thing is to put the filename into quotations. Now a
>filename, even with spaces, will be interpreted as one word.

Not just quotes, but prepend ./ too, in case any of your file names look
like "- -"

mcastle@dl-mcastle[03:45pm]~/foo(793) find
.
./bar
./a b
./blah
./blah/c d
./ns
./- -
mcastle@dl-mcastle[03:45pm]~/foo(794) ./ns
`././a b' -> `././a_b'
`././- -' -> `././-_-'
mcastle@dl-mcastle[03:45pm]~/foo(795) cat ns
#!/bin/bash

find -name '* *' -maxdepth 1 | while read name; do
        newname=$(echo $name | tr ' ' '_')
        mv -iv "./$name" ./$newname
done


Heh... forgot that find will already add in the ./ ... clean up as
appropriate.

mrc

-- 
     Mike Castle      dalgoda@ix.netcom.com      www.netcom.com/~dalgoda/
    We are all of us living in the shadow of Manhattan.  -- Watchmen
fatal ("You are in a maze of twisty compiler features, all different"); -- gcc
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
