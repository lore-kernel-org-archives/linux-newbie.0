From: Stephen Samuel <samuel@bcgreen.com>
Subject: oops Re: Change permissions of files to -xw +r for all other users
Date: Wed, 13 Jul 2005 04:52:53 -0700
Message-ID: <42D50095.7020202@bcgreen.com>
References: <200505261844.36271.rhys@rhyshardwick.co.uk> <42A86A31.5040200@bcgreen.com>
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit
Return-path: <linux-newbie-owner@vger.kernel.org>
In-Reply-To: <42A86A31.5040200@bcgreen.com>
Sender: linux-newbie-owner@vger.kernel.org
List-Id: <linux-newbie.vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"; format="flowed"
To: Stephen Samuel <samnospam@bcgreen.com>, rhys@rhyshardwick.co.uk, linux-newbie@vger.kernel.org

Stephen Samuel wrote:
> Rhys Hardwick wrote:
> 
>> Hey there,
>>
>> I know this may be a case of RTM, but I am getting confused on it.
>>
>> I want to change the permissions of all the files in my home folder to 
>> read only for all users but myself, but to leave directories 
>> executable so that they can be opened.  I have had difficulty doing 
>> this for only other users, and have ended up -xw for myself as well, 
>> even tyring many variations of the -o tag.  Any help would be fantastic.


> find ~ -type f -print0 | xargs -0 chmod og=r

On second thought:
Presuming that you really just want to remove write access, I'd
try  'chmod og-w' or 'chmod og-wx'

That would remove the write bit or the write and execute bits,
but not add the read bit.  There tend to be some files in a users
directory that you don't want readable all (like ssh private keys,
cert files etc.)

-- 
Stephen Samuel +1(604)876-0426                samuel@bcgreen.com
		   http://www.bcgreen.com/~samuel/
    Powerful committed communication. Transformation touching
      the jewel within each person and bringing it to light.
-
To unsubscribe from this list: send the line "unsubscribe linux-newbie" in
the body of a message to majordomo@vger.kernel.org
More majordomo info at  http://vger.kernel.org/majordomo-info.html
Please read the FAQ at http://www.linux-learn.org/faqs
