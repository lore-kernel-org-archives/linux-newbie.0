From: wolfgang127jp@ybb.ne.jp
Subject: How can I login with ssh in bash shell ?
Date: Wed, 25 Jun 2003 02:05:13 +0900
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030625015518.A37B.WOLFGANG127JP@ybb.ne.jp>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Hi gurus,

I wanna login to my server with ssh command in bash shell.
I found a script that login to a server with ftp command in bash shell.

The following is the snippet of a ftp shell..
---------------------------
ftp -n $Server <<End-Of-Session

user anonymous "$Password"
binary
bell                # Ring 'bell' after each file transfer
cd $Directory
put "$Filename.lsm"
put "$Filename.tar.gz"
bye
End-Of-Session

---------------------------------- 

so I made a simple script(simple.sh) below.
(abcdefg is the password of my_user)
----------------------------------
#!/bin/sh

ssh my_user@my_server <<END
abcdefg
echo "It works !!" > does_this_script_work.txt
exit
END

exit 0
---------------------------------

The result was....
-----------------------------
$ ./simple.sh
Pseudo-terminal will not be allocated because stdin is not a terminal.
my_user@my_server's password:
-----------------------------
Asking me the password ...

Why doesn't it work ?

I know It's not secure cuz the password is in the script, but I really
wanna make it work.

Please give me any hints.

Thanks in advance.

wolfgang.

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
