From: Rohit Sarkar <rohitsarkar5398@gmail.com>
Subject: Re: Hardware prerequisites for driver development
Date: Wed, 25 Sep 2019 22:24:34 +0530
Message-ID: <20190925165356.GA28917@SARKAR>
References: <20190925081836.GA22717@SARKAR>
 <CAKv63utZ+JSL=PH10bQdCYbrzoy0XBc_+UrVNFwTS2dkyjjxOw@mail.gmail.com>
Mime-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Return-path: <driverdev-devel-bounces@linuxdriverproject.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=sXKkE3u4Gt25Vll7joSYrDNRO6uCZgGWYBpw2Jrfy5k=;
 b=SD0ltrXBhGjEgN77oTEuFT6vJGiLOs/8mOKzZi0irWBPOAQyzb2Fya8tlSwvrLHMW6
 whp9B/+NZTj75Y66+QQiarwrGnRChibsPrl+tRSXOamZweX19lvFvZlQCjL2ngPY7CT2
 2/HA1F6fDqA5SoAtTpc1+mMrW7DGZdJxCspONgCpgiHtE8C9O5cBARGVlpF/zAPD1x4M
 zOHxjpUi9wnGS2C7FxkzIsybJ+J8WIkND5b3NMez27Qe/9ykW6IVg1dVutowgliCJIBp
 BTUdlODscdaT67ZmdHmb94QOZ7OBtCIFNrEr6xnXgdjXJ2GegWbdLtn24P8HdYQD0pDL
 X5ZA==
Content-Disposition: inline
In-Reply-To: <CAKv63utZ+JSL=PH10bQdCYbrzoy0XBc_+UrVNFwTS2dkyjjxOw@mail.gmail.com>
List-Id: <linux-newbie.vger.kernel.org>
List-Unsubscribe: <http://driverdev.linuxdriverproject.org/mailman/options/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=unsubscribe>
List-Archive: <http://driverdev.linuxdriverproject.org/pipermail/driverdev-devel/>
List-Post: <mailto:driverdev-devel@linuxdriverproject.org>
List-Help: <mailto:driverdev-devel-request@linuxdriverproject.org?subject=help>
List-Subscribe: <http://driverdev.linuxdriverproject.org/mailman/listinfo/driverdev-devel>, 
 <mailto:driverdev-devel-request@linuxdriverproject.org?subject=subscribe>
Errors-To: driverdev-devel-bounces@linuxdriverproject.org
Sender: "devel" <driverdev-devel-bounces@linuxdriverproject.org>
To: Crt Mori <cmo@melexis.com>
Cc: Linux Iio <linux-iio@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, linux-newbie@vger.kernel.org

On Wed, Sep 25, 2019 at 10:32:02AM +0200, Crt Mori wrote:
> Hi Rohit,
> There are many companies for hobbyists which sell sensors included in
> IIO subsystem and for sure some electronic component store in your
> local area. Price of sensor can be from 0.10 USD to 10 USD. Then you
> plug this sensor to your Linux board (Beaglebone Black is Linux
> Foundation preferred, although there are others including Raspberry PI
> - can even be RPI Zero if you are on a budget, Odroid, Linaro, ...)
> and you will need to provide correct voltage/current for the sensor.
> Easiests is that you pick sensors which are 3.3V or 5V domains,
> because you have pins on most Linux boards with this voltages and
> these pins supply enough current for most iio sensors. Then you just
> connect (wire) power pin on sensor to power pin on your board, and
> then communication pins from sensor to board and ground from sensor to
> board. Some addition into dts will be needed for the Linux to know
> where your sensor is connected at, but then it should work as
> plug-and-play.
> 
> I hope I did not miss too many steps in between :)
> 
> Crt

Hi Crt,
Thanks for replying, your answer was super detailed and helpful.

Thanks,
Rohit
