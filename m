From: ichi@ihug.co.nz
Subject: Re: FSpecs
Date: Fri, 15 Nov 2002 20:42:37 +0000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <3DD55C3D.27BB9BBF@ihug.co.nz>
References: <MSGID_110=3a20=2f1_50638fc8@linuxnet> <5.1.0.14.1.20021114185333.020ca1d0@celine> <3DD54770.6EFEAF21@ihug.co.nz>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Ray Olszewski wrote:
> 
> > > In my case I need the first 8 characters and the
> > > last 4 (.xxx)
> >
> >--------------------------------------------------
> >example="long-filename.to.munge.txt"
> >echo ${example%${example#????????}}.${example##*.}
> >--------------------------------------------------
> 
> All the approaches suggested for this exercise assume that one 
> need not worry about generating a UNIQUE 8.3 filename from the 
> long filename. Is that assumption appropriate to Ben's real, 
> underlying problem? Or does it risk overwriting a file with a 
> later one 

OK, Ray, here's one off the top of my head.  I'm sure it 
can be improved, but it will do for a start.
-------------------------------------------------------------
#!/bin/bash
from="/home/ichi"  to="/tmp"
for i in `ls $from` ; do 
front=${i%.*} ; back=""
echo $i | grep "\." >/dev/null ; [ $? = 0 ] && back=.${i##*.}
[ ${#front} -gt 8 ] && front=${front%${front#????????}}
[ ${#back} -gt 4 ] && back=${back%${back#????}}
front=`echo $front | tr " ." "__"`
new=$front$back
for j in `ls $to` ; do
  case $j in $new) 
     echo "$new already exists.  Input new name."
     read new 
  esac
done
echo $new  ### YOUR OUTPUT ROUTINE GOES HERE ### 
done
--------------------------------------------------------------

I suppose somebody is going to tell that there is a built-in
command that does this automatically.  Ah, well.

Cheers,
Steven

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
