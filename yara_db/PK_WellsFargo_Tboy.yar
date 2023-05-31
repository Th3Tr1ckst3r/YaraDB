rule PK_WellsFargo_Tboy : WellsFargo
{
    meta:
        description = "Phishing Kit impersonating Wells Fargo"
        licence = "GPL-3.0"
        author = "Thomas 'tAd' Damonneville"
        reference = ""
        date = "2020-09-30"
        comment = "Phishing Kit - Wells Fargo - by 'H4rKy Tboy'"

    strings:
        // the zipfile working on
        $zip_file = { 50 4b 03 04 }
        // specific file found in PhishingKit
        $spec_file = "wellsfargo.htm"
        $spec_file2 = "wells.php"
        $spec_file3 = "next.php"
        $spec_file4 = "next.htm"

    condition:
        // look for the ZIP header
        uint32(0) == 0x04034b50 and
        // make sure we have a local file header
        $zip_file and
        // check for file
        $spec_file and
        $spec_file2 and
        $spec_file3 and 
        $spec_file4
}