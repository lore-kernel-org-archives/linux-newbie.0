From: Peter <pfheiss@philonline.com>
Subject: Re: recovering files after rm
Date: Wed, 02 Apr 2003 11:56:38 +0800
Sender: linux-newbie-owner@vger.kernel.org
Message-ID: <200304020356.h323uc203288@philonline.com>
References: <200304011516.h31FGxO2000493@hartford-hwp.com>  
 <200304010146.h311kNs02265@philonline.com>
Mime-Version: 1.0
Content-Transfer-Encoding: QUOTED-PRINTABLE
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: Your message of "Tue, 01 Apr 2003 10:16:59 EST." 
 <200304011516.h31FGxO2000493@hartford-hwp.com>
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="iso-8859-1"
To: brownh@hartford-hwp.com
Cc: linux-newbie@vger.kernel.org

>> I am using the program safedelete. It works well and is easy to inst=
all=20
just
>> follow the instructions to set it up.

> Very puzzling response. The thread is about how to recover a deleted
> file, but SafeDelete offers, as best as I can make out, only a
> commercial Annihilator application for Windows. It is one of a number
> of programs that overwrites hard disks so that information can't be
> retrieved from them. This is quite the opposite of the original
> question.=20

I know nothing about Windows!!

As for safedelete in Linux,

In ~/.bashrc one puts:

alias rm=3D"/usr/bin/safedelete -i"

then when one does a rm file, see below

man safedelete

DESCRIPTION
       safedelete  provides  a way to safely delete files so they
       can be undeleted on demand.  safedelete `deletes' files by
       copying  them to a safedelete directory which is specified
       at install time.  Files processed by safedelete are  given
       a  new  unique  filename  after  they  are  placed  in the
       safedelete directory.  This allows multiple copies of  the
       same  file to be safedeleted without having to worry about
       collisions with existing files.

       Each user has a log file containing the names of  all  the
       files they can currently undelete (see the undelete manual
       page for details on undeleting files).  The log file  name
       is  .safedelete.log and is kept in each users $HOME direc=AD
       tory.

       Each user has a safedelete subdirectory within their $HOME
       directory.   The  subdirectory  name  is  set  during  the
       installation of safedelete and  defaults  to  .Safedelete.
       See your system administrator for the subdirectory name on
       your system.


--=20
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie"=
 in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
