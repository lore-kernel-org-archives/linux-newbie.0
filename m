From: "Sandeep Shetty" <nsandeepshetty@hotmail.com>
Subject: Need help on ACL in linux
Date: Fri, 27 May 2005 12:19:30 +0530
Message-ID: <BAY1-DAV242835EFDB02670A9D294CE000@phx.gbl>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
Message-ID: <000001c56288$3bd50e20$7604a8c0@socsoft.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="utf-8"
To: linux-newbie@vger.kernel.org

Hi all,
I'd like to know how to use the default option in setfacl works in Linu=
x.
=46or example I have 3 users --- dir_owner, secondparty and thirdparty
If dir_owner is the owner of a directory named dir1 and whenever he cre=
ates  directories/files under dir1 I would like the user thirdparty  to=
 have rwx permission  and the user secondparty only r-x permission on t=
hose child folders by default. How do I use setfacl in this case .


Tnx & Warm Wishes=20
=DB=8C =CE=B1 n d =E2=82=AC =E2=82=AC =D7=A7 =20
=20

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
