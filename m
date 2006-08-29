From: Santosh Puranshettiwar <santosh@wirkle.com>
Subject: Combining three commands
Date: Tue, 29 Aug 2006 18:24:19 +0530
Message-ID: <44F438FB.5080207@wirkle.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="windows-1252"; format="flowed"
To: linux-newbie@vger.kernel.org

$ /home/foouser/decoder input-file.amr temp.raw
$ sox =96r 8000 =96w =96c 1 =96s temp.raw =96r *8000* =96w =96c 1 temp.=
wav
$ lame =96h temp.wav file.mp3 --tt song-title --ta artist --tl album

Here are three commands that I wish to combine in one line so as to=20
avoid any temporary files?
Could anyone suggest me a solution.

Santosh.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
