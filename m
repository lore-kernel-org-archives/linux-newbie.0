From: Martchukov Anton <vhlist@yandex.ru>
Subject: Re: IceWM Icons
Date: Sat, 30 Aug 2003 12:44:09 +0400
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <20030830124409.01902755.vhlist@yandex.ru>
References: <200308291249.57190.sotl155360@earthlink.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200308291249.57190.sotl155360@earthlink.net>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: linux-newbie@vger.kernel.org

On Fri, 29 Aug 2003 12:49:57 -0400
Frank Roberts - SOTL <sotl155360@earthlink.net> wrote:

> So I decided to configure Ice-WM.
> Does anyone know how to configure the desktop by adding different
> backgrounds add icons to Ice-WM?

Unfortunately, it seems that IceWM doesn't support desktop icons, you
have to use another program as a desktop. Get dfm (Desktop File Manager)
and use it with IceWM. The line in xinitrc should look like

exec dfm& icewm

Now you may configure desktop wallpaper and icons by right-click on
desktop the same way as in windows. 

However, if you need just wallpaper on a desktop without icons, IceWM
can handle this, look in 'preferences' file. Usualy

~/.icewm/preferences or /usr/X11R6/etc/X11/icewm/preferences

There should be strings like 

# DesktopBackgroundColor = "rgb:55/55/7f"
# DesktopBackgroundColor = ""
# DesktopBackgroundImage = ""

Just uncomment and edit them.


Hope this helps.

--
Martchukov Anton aka VH ========================================      
---------------------------------------------------------------- 
E-mail: vhlist@yandex.ru    
ICQ: 155279978                     Registered Linux User #323324
================================================================
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
