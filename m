From: Peter <heisspf@skyinet.net>
Subject: GrabWeather Error
Date: Thu, 13 Jul 2006 11:08:06 +0800
Message-ID: <200607130308.k6D3862l027479@skyinet.net>
Mime-Version: 1.0
Return-path: <linux-newbie-owner@vger.kernel.org>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
To: linux-newbie@vger.kernel.org

Hi,

If I invoke GrabWeather I get the following error:

Use of uninitialized value in concatenation (.) or string at 
/usr/local/bin/GrabWeather line 200.

Line 200 reads:

print TmpFile "$SkyConditions\n";

before that there are lines referring to sky condition:

-----------
my ($StationInfo, $UpdateTime, $SkyConditions, $CodedMETAR);

while (<TmpFile>)
{
		chop;
			
		if ($Flag == 0) { $StationInfo = $_; };
		if ($Flag == 1) { $UpdateTime = $_; };
		if (/^Sky conditions:/)
		{ 
				$SkyConditions = $_; 
				$SkyConditions =~ s/Sky conditions: (.*)/$1/; 
		}

------------

Does anyone know how to fix this?

In the meantime I just uncommended line 200.

GrabWeather works just the same.

Thanks & regards
-- 
Peter

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
