From: Xeslaro <bfsc.yb@gmail.com>
Subject: is it possible to disable bold(bright) color under console?
Date: Tue, 4 Sep 2012 17:15:23 +0000
Message-ID: <20120904171521.GB26431@Xeslaro>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=Vh5/iK4HAmGFMIQ+3patg+xNo4Ze3Is4VIXcWYfnpqc=;
        b=Xeptox4bmX+Sj2BlCOceMNU9rFSYTc43oXzPugvOlR/DiYksSd+dG/4MySuD7ADkb+
         DrBObIM5rSqy0yJs/a8erS+jvMj6+IGfH/RlBHURmrC19RUcSEpz5RCjmzs8c+jdv2Jw
         td+5cLBNfLrF6HWq+mq8yf08k/peCt4xbcW3EcDqmXFXbnxqOeNtD2/3kaciPusgxZIZ
         Bixipupe/f4fv6/zqSDM/4LEHQQRblOEoi1UX409rIiYTytcAea+T4aIwN9VN5lp16eE
         tphCUAZwrKvPdbAs8fva00W/tG2fcesehkhdDa2gHPzER9TDWnYZF9zuDdNzFYa2B24N
         WMFA==
Content-Disposition: inline
Sender: linux-newbie-owner@vger.kernel.org
List-ID: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

  when some application write, for example, \e[1;31m msg \e[0m to console, is it possible to just ignore the "1;" which asks to use a bold(bright) color and just write \e[31m msg \e[0m instead? i don't like bold colors, they make eyes suffering.

  i tried setterm -bold off, which doesn't work; and infocmp to dump the terminfo file, remove the bold entry, use tic to save the setting, which only take effect on applications that use the ncurses library.

  is there any way to solve this problem?
--
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
