From: Ciro Santilli <ciro.santilli@gmail.com>
Subject: Non-interactive configuration with command line options
Date: Tue, 11 Aug 2015 12:11:43 +0200
Message-ID: <CAFXrp_cRfJd6NqQP+_Q9z3ki1isKRz04fn8uskHeSYiyvhVN=A@mail.gmail.com>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:date:message-id:subject:from:to:content-type;
        bh=hgeaL/n06vHcYFzmqCBAUDRDz+8jSgGpyjZv+14UBWE=;
        b=0+Rj51cw1xdOod7+OHsRM/7nlNAVlk4+aBgoBXYTK9bey38zcSAd/Rz2ezUaf+njNr
         73tE+22ie8/qoHxdUPaAHCN43Wh4FddVNJImlkpnzozkHo6EaJVnpESKRpWc295w8Kqu
         IaZQkX6W+jWvx6XMBfnmhzoGmiexKrDRe1UfHCezuC33kO+CtpzpLkw0+5Bsrds1PYDh
         zFhltGbrZcETf6oOSH0teBUUuSZhBprX1OKYaYU8rAZuF1lUZECYj7A56hdYhKRqbdMC
         Uq4ju37v5ADMRXKfWjLihqL7JBwhs68EXvja45t90X+cAFRdHxu0P8gdFQAUbjk8yaXB
         rlLA==
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

To better automate kernel building when I only need to modify a few
options, I want to write something like:

    make defconfig CONFIG_DEBUG_INFO=y

and have all dependency conflicts that might generate solved with
`make silentoldconfig`. Is there such a command?

Alternatives I've found and why I'm not satisfied:

- `sed`: requires typing up a sed command or an alias.
- prepare a `.config` file, and copy it around. Overhead of copying
and remembering the path or creating an alias

Disadvantages of both of the above: do not reuse the build directory
information given to `make`, either through `O=` or `KBUILD_OUTPUT`.
Of course, our alias could take them into account, but that adds more
overhead again.

Also asked at:

- http://stackoverflow.com/questions/7505164/how-do-you-non-interactively-turn-on-features-in-a-linux-kernel-config-file?answertab=active#tab-top

- http://unix.stackexchange.com/questions/19905/non-interactive-configuration-of-linux-kernel

If anyone would review a patch for that, I will attempt it.
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
