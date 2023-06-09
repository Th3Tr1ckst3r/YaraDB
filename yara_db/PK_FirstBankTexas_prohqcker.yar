rule PK_FirstBankTexas_prohqcker : FirstBankTexas
{
    meta:
        description = "Phishing Kit impersonating First Bank Texas"
        licence = "GPL-3.0"
        author = "Thomas 'tAd' Damonneville"
        reference = ""
        date = "2023-02-02"
        comment = "Phishing Kit - First Bank Texas - '*Prohqcker*Telegram ID @prohqcker*'"

    strings:
        // the zipfile working on
        $zip_file = { 50 4b 03 04 }
        // specific directory found in PhishingKit
        $spec_dir = "Cm"
        $spec_dir2 = "signal"
        // specific file found in PhishingKit
        $spec_file = "c.html"
        $spec_file2 = "index2.html"
        $spec_file3 = "prohqcker5.php"
        $spec_file4 = "desktop-background-31261c4b72eb487c279e9a1b57d9f095.jpg"

    condition:
        // look for the ZIP header
        uint32(0) == 0x04034b50 and
        // make sure we have a local file header
        $zip_file and
        all of ($spec_dir*) and 
        // check for file
        all of ($spec_file*)
}
