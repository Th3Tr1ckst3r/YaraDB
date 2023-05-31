rule PK_ChinaLogin_xclusiv : chinese_Email_verification
{
    meta:
        description = "Phishing Kit stealing email credentials in chinese"
        licence = "GPL-3.0"
        author = "Thomas 'tAd' Damonneville"
        reference = ""
        date = "2020-10-19"
        comment = "Phishing Kit - Email Verification - 'Xclusiv-3D-Logs'"

    strings:
        // the zipfile working on
        $zip_file = { 50 4b 03 04 }
        // specific directory found in PhishingKit
        $spec_dir = "files"
        // specific file found in PhishingKit
        $spec_file = "enx.php"
        $spec_file2 = "sxc.php"
        $spec_file3 = "post1.php"

    condition:
        // look for the ZIP header
        uint32(0) == 0x04034b50 and
        // make sure we have a local file header
        $zip_file and
        $spec_dir and
        // check for file
        $spec_file and
        $spec_file2 and
        $spec_file3
}

