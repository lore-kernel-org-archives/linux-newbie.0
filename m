From: Ray Olszewski <ray@comarre.com>
Subject: Re: GrabWeather Error
Date: Wed, 12 Jul 2006 23:31:45 -0700
Message-ID: <44B5E8D1.60401@comarre.com>
References: <200607130308.k6D3862l027479@skyinet.net>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <200607130308.k6D3862l027479@skyinet.net>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: linux-newbie@vger.kernel.org

Peter -- Since the error is from an unitialized variable, the obvious 
thing to try is to initialize it with a harmless default value. Add a 
line something like this one:

 > my ($StationInfo, $UpdateTime, $SkyConditions, $CodedMETAR);

$SkyConditions = " "	;

 > while (<TmpFile>)

I'm assuming this is Perl code; it looks like Perl.

Peter wrote:
> Hi,
> 
> If I invoke GrabWeather I get the following error:
> 
> Use of uninitialized value in concatenation (.) or string at 
> /usr/local/bin/GrabWeather line 200.
> 
> Line 200 reads:
> 
> print TmpFile "$SkyConditions\n";
> 
> before that there are lines referring to sky condition:
> 
> -----------
> my ($StationInfo, $UpdateTime, $SkyConditions, $CodedMETAR);
> 
> while (<TmpFile>)
> {
> 		chop;
> 			
> 		if ($Flag == 0) { $StationInfo = $_; };
> 		if ($Flag == 1) { $UpdateTime = $_; };
> 		if (/^Sky conditions:/)
> 		{ 
> 				$SkyConditions = $_; 
> 				$SkyConditions =~ s/Sky conditions: (.*)/$1/; 
> 		}
> 
> ------------
> 
> Does anyone know how to fix this?
> 
> In the meantime I just uncommended line 200.
> 
> GrabWeather works just the same.
> 
> Thanks & regards

-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
