rule PK_BanquePostale_m3tripstl : Banque Postale
{
    meta:
        description = "Phishing Kit impersonating la Banque Postale"
        licence = "GPL-3.0"
        author = "Thomas 'tAd' Damonneville"
        reference = ""
        date = "2023-03-23"
        comment = "Phishing kit - Banque Postale - 'postal infos By METRI'"        

    strings:
        // the zipfile working on
        $zip_file = { 50 4b 03 04 }
        // specific directory found in PhishingKit
        $spec_dir = "Pstl_files"
        $spec_dir1 = "M3tri-hash-bots"
        // specific file found in PhishingKit
        $spec_file = "anti9.php"
        $spec_file2 = "Error.php"
        $spec_file3 = "pstl-rd-otp.php"
        $spec_file4 = "pstl-done.php"

    condition:
        // look for the ZIP header
        uint32(0) == 0x04034b50 and
        // make sure we have a local file header
        $zip_file and
        all of ($spec_dir*) and 
        // check for file
        all of ($spec_file*)
}
