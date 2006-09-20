From: Peter <heisspf@skyinet.net>
Subject: Joe Failing
Date: Wed, 20 Sep 2006 15:01:22 +0800
Message-ID: <200609200701.k8K71Mfn002294@skyinet.net>
Reply-To: heisspf@skyinet.net
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Content-ID: <2292.1158735682.1@heisspf>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux <linux-newbie@vger.kernel.org>

Hi,

Slackware 10.2, kernel 2.6.16-20

since years I have been using the editor joe in xterm flawlessly. Now, =
it=20
started to play weird.

Opening joe, the first typed letter will not register and then further =
down=20
the line others too, like:

 bbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbb bbbbbbbbbbbbbbbbbbbbbbbbbbbbb bbbb=
bbbbbb

Then trying to edit a file I get strange characters:

#     session.menuFile: /home/you/.fluxbox/my-menu  =20
=C6begin=C5 (Fluxbox-0.9.14)
  =C6exec=C5 (xterm)    =E6xterm -bg lightyellow -fg black +sb -g 75x22=
=E5
  =C6exec=C5 (xterm small)  =E6xterm -bg moccasin -fg black +sb -g 50x1=
2=E5
  =C6exec=C5 (MC)       =E6.mc=E5
  [exec] (su)       =E6rxvt -bg lightblue -fg firebrick -e su=E5
  [exec] (MCsu)     =E6/usr/local/bin/aaterm +tr  -bg brown -fg white -=
cr blue -f
  [exec] (EmelFM)   {emelfm=E5=20
#  =C6exec=C5 (kppp)     =E6kppp=E5 =20
  =C6exec=C5 (CD FM)    =E6 xfmountdev4 /mnt/cdrom=E5

Getting out of this the xterm line reads:

heisspf=C4=FC:$

instead of:

heisspf@~:$

The same happens with gnome-terminal and rxvt, however, not with aterm.

Man pages do not display properly as well except in aterm:

with xterm man joe:

Name
oe - Joe's Own Editor

Syntax
joe[global-options][[local-options]filename]...

with aterm man joe:

Name
           joe - Joe's Own Editor

Syntax
JOE(1)       joe[global-options][[local-options]filename]...

On the console joe works properly.

Any explanation and recommended correction appreciated.

Thanks & regards    =20
--=20
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
