From: "rgomez@bancomer.com" <rgomez@bancomer.com>
Subject: XFree86 - Refresh Rate.
Date: Wed, 21 Jan 2004 10:25:13 -0600
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <4004711800003B7E@mail-bcm01.alestra.net.mx>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: linux-newbie@vger.kernel.org

My eyes ask for yor help because they feel very tired. I cannot take X-=
Windows
at 1024x768@75, I Know that my monitor and video card are able of this =
because
in Windows I can do it, I want to specify refresh rate to 75 instead of
60. =BFHow can I do this??

XFree Version:    XFree86-4.3.0-2.90.43

Actual XF86Config file:

Section "Monitor"
        Identifier   "Monitor0"
        VendorName   "Monitor Vendor"
        ModelName    "Dell VS17X"
        HorizSync    30.0 - 65.0
        VertRefresh  50.0 - 120.0
        Option      "dpms"
EndSection

Section "Device"
        Identifier  "Videocard0"
        Driver      "vesa"
        VendorName  "Videocard vendor"
        BoardName   "S3 Trio64V2 (generic)"
        VideoRam    2048
EndSection

Section "Screen"
        Identifier "Screen0"
        Device     "Videocard0"
        Monitor    "Monitor0"
        DefaultDepth     16
        SubSection "Display"
                Depth     16
                Modes    "1024x768" "800x600" "640x480"
        EndSubSection
EndSection

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
