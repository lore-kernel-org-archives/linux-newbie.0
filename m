From: "Riley Williams" <Riley@Williams.Name>
Subject: RE: mplayer conversion - UGLY pictures
Date: Sat, 3 May 2003 14:29:06 +0100
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <BKEGKPICNAKILKJKMHCAMEDICKAA.Riley@Williams.Name>
References: <b90bbb$lp9$1@main.gmane.org>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <b90bbb$lp9$1@main.gmane.org>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
To: GMane <robert_schmidli@hotmail.com>, linux-newbie@vger.kernel.org

Hi.

 > I am using mplayer to convert .avi to .jpg thumbnails for a web page
 > that allows users to click on the thumbnail to view the movie. I use
 > a php script to do this. I am using the following command to convert 
 > the movies:
 >
 > exec( "cd $basedir; /usr/local/bin/mplayer -noautosub -vo jpeg -xy \
 >		100 -zoom -frames 1 $file", $return );
 >
 > It seems to die if I don't use the -noautosub option.
 >
 > When I use -zoom to scale the image I lose a lot of the colors.
 >
 > Is there some way I can preserve my beautiful pictures?

I can't help with mplayer directly, but one possible option is to use
mplayer without the zoom to create same size images, then use convert
(from GIMP) to resize the images in a separate step.

Best wishes from Riley.
---
 * Nothing as pretty as a smile, nothing as ugly as a frown.

---
Outgoing mail is certified Virus Free.
Checked by AVG anti-virus system (http://www.grisoft.com).
Version: 6.0.476 / Virus Database: 273 - Release Date: 24-Apr-2003

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
