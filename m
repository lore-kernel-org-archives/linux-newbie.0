From: suneesh <suneesh@naturesoft.net>
Subject: Re: Encypted Loopback Filesystem
Date: Thu, 05 Aug 2004 14:34:35 +0530
Sender: kernelnewbies-bounce@nl.linux.org
Message-ID: <4111F823.8050702@naturesoft.net>
References: <1091472748.5577.26.camel@bijar.nec-labs.com>
Mime-Version: 1.0
Content-Type: multipart/alternative;
 boundary="------------060208010304080905090807"
Return-path: <kernelnewbies-bounce@nl.linux.org>
In-Reply-To: <1091472748.5577.26.camel@bijar.nec-labs.com>
Errors-to: kernelnewbies-bounce@nl.linux.org
List-help: <mailto:ecartis@nl.linux.org?Subject=help>
List-unsubscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=unsubscribe>
List-software: Ecartis version 1.0.0
List-Id: <linux-newbie.vger.kernel.org>
List-subscribe: <mailto:kernelnewbies-request@nl.linux.org?Subject=subscribe>
List-owner: <mailto:riel@nl.linux.org>
List-post: <mailto:kernelnewbies@nl.linux.org>
List-archive: <http://mail.nl.linux.org/kernelnewbies/>
To: knb <kernelnewbies@nl.linux.org>
Cc: linux-newbie@vger.kernel.org


--------------060208010304080905090807
Content-Type: text/plain; charset=us-ascii; format=flowed
Content-Transfer-Encoding: 7bit

Hi

Using losetup you can set a loop device for a particular partition and 
it will ask
passwords for the same. After this one can mount that loop device to a some
mount point. If the password is not correct, the mount will fail.
For eg:

[root@root]# losetup  -e xor /dev/loop3 /dev/hda2
Password:
[root@root]# mkfs -t ext2 /dev/loop3 100
[root@root]# mount /dev/loop3 /NETBSD/
[root@root]# ls /NETBSD/
lost+found
[root@root]# echo hello > /NETBSD/hello
[root@root]# cat /NETBSD/hello
hello
[root@root]# umount /dev/loop3
[root@root]# losetup -d /dev/loop3

Checking if the partition is encrypted
-------------------------------------------------------
[root@root]# mount /dev/hda2 /NETBSD/
mount: you must specify the filesystem type

Mouting it using password
--------------------------------------
[root@root]# losetup  -e xor /dev/loop3 /dev/hda2
Password:
[root@root]# mount /dev/loop3 /NETBSD/
[root@root]# ls /NETBSD/
hello  lost+found

But after mounting the partitiion, it doesn't provide any security and 
the files will
be accessible by everyone who has the right to access it. The protection 
is that it
will ask for passwords when mounting that partition, so if somebody steals
the computer after a power-off, he will not be able to mount and see the 
files under
the encrypted partition.

Regards

Suneesh


Lei Yang wrote:

>Hello,
>
>I am trying to play around loopback device and want to set up an
>encrypted loopback filesystem. I did the following things:
>
>1. losetup -e serpent /dev/loop0 /etc/crypt
>/ect/crypt: Is a directory
>
>So I tried: losetup -e serpent /dev/loop0 /etc/cryptfile and this time
>cryptfile is a plain txt file.
>
>Enter passwd...
>
>2. mkfs -t ext2 /dev/loop0
>3. mount -t ext2 /dev/loop0 /mnt/crypt
>
>After this, how do I verify that anything happened that has enabled
>encryption? I can't understand where the encrypted filesystem lies in
>here:( Plus, when we say 'encrypted', which file is on earth encrypted?
>Is that files and data in /mnt/crypt are encrypted form of
>/etc/cryptfile? Really confused.
>
>TIA!
>
>Lei 
>
>
>--
>Kernelnewbies: Help each other learn about the Linux kernel.
>Archive:       http://mail.nl.linux.org/kernelnewbies/
>FAQ:           http://kernelnewbies.org/faq/
>
>
>
>  
>


-- 
Suneesh T P,
Senior Associate, Embedded,
NatureSoft Pvt Ltd.
Mailto: suneesh@naturesoft.net
WebSite: www.nature-soft.com


--------------060208010304080905090807
Content-Type: text/html; charset=us-ascii
Content-Transfer-Encoding: 7bit

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
  <title></title>
</head>
<body>
Hi<br>
<br>
Using losetup you can set a loop device for a particular partition and
it will ask<br>
passwords for the same. After this one can mount that loop device to a
some <br>
mount point. If the password is not correct, the mount will fail. <br>
For eg:<br>
<br>
[root@root]# losetup&nbsp; -e xor /dev/loop3 /dev/hda2 <br>
Password: <br>
[root@root]# mkfs -t ext2 /dev/loop3 100 <br>
[root@root]# mount <i class="moz-txt-slash"><span class="moz-txt-tag">/</span>dev/loop3
/NETBSD<span class="moz-txt-tag">/</span></i> <br>
[root@root]# ls <i class="moz-txt-slash"><span class="moz-txt-tag">/</span>NETBSD<span
 class="moz-txt-tag">/</span></i> <br>
lost+found <br>
[root@root]# echo hello &gt; /NETBSD/hello <br>
[root@root]# cat /NETBSD/hello <br>
hello <br>
[root@root]# umount /dev/loop3 <br>
[root@root]# losetup -d /dev/loop3 <br>
<br>
Checking if the partition is encrypted <br>
------------------------------------------------------- <br>
[root@root]# mount <i class="moz-txt-slash"><span class="moz-txt-tag">/</span>dev/hda2
/NETBSD<span class="moz-txt-tag">/</span></i> <br>
mount: you must specify the filesystem type <br>
<br>
Mouting it using password <br>
-------------------------------------- <br>
[root@root]# losetup&nbsp; -e xor /dev/loop3 /dev/hda2 <br>
Password: <br>
[root@root]# mount <i class="moz-txt-slash"><span class="moz-txt-tag">/</span>dev/loop3
/NETBSD<span class="moz-txt-tag">/</span></i> <br>
[root@root]# ls <i class="moz-txt-slash"><span class="moz-txt-tag">/</span>NETBSD<span
 class="moz-txt-tag">/</span></i> <br>
hello&nbsp; lost+found <br>
<br>
But after mounting the partitiion, it doesn't provide any security and
the files will<br>
be accessible by everyone who has the right to access it. The
protection  is that it<br>
will ask for passwords when mounting that partition, so if somebody
steals<br>
the computer after a power-off, he will not be able to mount and see
the files under <br>
the encrypted partition.<br>
<br>
Regards<br>
<br>
Suneesh <br>
<br>
<br>
Lei Yang wrote:<br>
<blockquote type="cite"
 cite="mid1091472748.5577.26.camel@bijar.nec-labs.com">
  <pre wrap="">Hello,

I am trying to play around loopback device and want to set up an
encrypted loopback filesystem. I did the following things:

1. losetup -e serpent /dev/loop0 /etc/crypt
/ect/crypt: Is a directory

So I tried: losetup -e serpent /dev/loop0 /etc/cryptfile and this time
cryptfile is a plain txt file.

Enter passwd...

2. mkfs -t ext2 /dev/loop0
3. mount -t ext2 /dev/loop0 /mnt/crypt

After this, how do I verify that anything happened that has enabled
encryption? I can't understand where the encrypted filesystem lies in
here:( Plus, when we say 'encrypted', which file is on earth encrypted?
Is that files and data in /mnt/crypt are encrypted form of
/etc/cryptfile? Really confused.

TIA!

Lei 


--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       <a class="moz-txt-link-freetext" href="http://mail.nl.linux.org/kernelnewbies/">http://mail.nl.linux.org/kernelnewbies/</a>
FAQ:           <a class="moz-txt-link-freetext" href="http://kernelnewbies.org/faq/">http://kernelnewbies.org/faq/</a>



  </pre>
</blockquote>
<br>
<br>
<pre class="moz-signature" cols="72">-- 
Suneesh T P,
Senior Associate, Embedded,
NatureSoft Pvt Ltd.
Mailto: <a class="moz-txt-link-abbreviated" href="mailto:suneesh@naturesoft.net">suneesh@naturesoft.net</a>
WebSite: <a class="moz-txt-link-abbreviated" href="http://www.nature-soft.com">www.nature-soft.com</a>
</pre>
</body>
</html>

--------------060208010304080905090807--


--
Kernelnewbies: Help each other learn about the Linux kernel.
Archive:       http://mail.nl.linux.org/kernelnewbies/
FAQ:           http://kernelnewbies.org/faq/

