From: "GMane" <robert_schmidli@hotmail.com>
Subject: mplayer conversion - UGLY pictures
Date: Sat, 3 May 2003 22:07:16 +1000
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <b90bbb$lp9$1@main.gmane.org>
Reply-To: "GMane" <robert_schmidli@hotmail.com>
Return-path: <linux-newbie-owner@vger.kernel.org>
List-Id: <linux-newbie.vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

I am using mplayer to convert .avi to .jpg thumbnails for a web page that
allows users to click on the thumbnail to view the movie.  I use a php
script to do this.  I am using the following command to convert the movies:

exec( "cd $basedir; /usr/local/bin/mplayer -noautosub -vo jpeg -xy
100 -zoom -frames 1 $file", $return );

It seems to die if I don't use the -noautosub option.

When I use -zoom to scale the image I lose a lot of the colors.

Is there some way I can preserve my beautiful pictures?



-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
