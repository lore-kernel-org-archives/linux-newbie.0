From: Phil C <hpypenguin@yahoo.com>
Subject: Problems compiling Binutils 2.17
Date: Sat, 2 Aug 2008 23:20:28 -0700 (PDT)
Message-ID: <503928.82870.qm@web59706.mail.ac4.yahoo.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: Newbie Mailing List <linux-newbie@vger.kernel.org>

I am making my first attempt at compiling linux from source. To do this I'm using the LFS book and the most current stable kernel (2.6.26). The setup process seems to go fine but when I try and compile binutils it fails. 

I'm using the following command taken from LFS. The command is done from the ../binutils-build folder.


#>CC="gcc -B/usr/bin/" ../binutils-2.17/configure \  --prefix=/tools --disable-nls --disable-werror

After entering the command I get one of two errors. If I sudo the command I get

#>/sbin invalid command 'configure'

In lieu of using sudo I get

#>../binutils-2.17/configure is an invalid file or directory.

(Both responses are approximations I have no access to the terminal from 
the computer I'm on as I'm at work and not using Linux here, but you get the gist
of it. Using sudo it interprets the command improperly and without sudo it's
looking for a directory that doesn't exsist. Sorry I can't provide an exact terminal
copy. This has been a continuing problem due mainly to my ISP screwing up my
connection and thus leaving me with no internet at the house.)

The binutils-2.17 files are being stored in both the home directory of the user 
I'm conducting the build from as well as in it's own folder under home. Is this a
sytnax error or have I placed the source files in the wrong location?

Thanks

 - Phil C



      

--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
