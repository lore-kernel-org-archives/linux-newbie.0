From: Heimo Claasen <hammer@revobild.net>
Subject: Re: a trouble with OpenGL (additional information)
Date: 17 Sep 2002
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200209170236.g8H2adRA019956@pegasus.wanadoo.be>
Content-Transfer-Encoding: 8bit
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

Had similar trouble with the Nvidia driver: despite a good - and,
according to the Nvidia cocumentation, complete and compatible -
installation of Mdk 8.2 the Nvidia driver refuses to install.

It complains about the kernel versin - the Nvidia driver wants
"kernel = 2.4.8-16mdk" while for its "Mdk 8.1"-compliant installation:
while Mdk 8.1 and 8.2 have higher kernel versions (2.4.18-6mdk for the
latter).

Clearly a (Nividia) bug.

// Heimo Claasen // <hammer at revobild dot net> // Brussels 2002-09-16
The WebPlace of ReRead - and much to read  ==>  http://www.revobild.net

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
