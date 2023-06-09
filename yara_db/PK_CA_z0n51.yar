rule PK_CA_z0n51 : Credit_Agricole
{
    meta:
        description = "Phishing Kit impersonating Credit Agricole"
        licence = "GPL-3.0"
        author = "Thomas 'tAd' Damonneville"
        reference = "https://stalkphish.com/2020/12/14/how-phishing-kits-use-telegram/"
        date = "2022-07-20"
        comment = "Phishing Kit - Credit Agricole - 'Author: z0n51'"

    strings:
        $zip_file = { 50 4b 03 04 }
        $spec_dir = "z0n51"
        $spec_file1 = "_media-queries.scss"
        $spec_file2 = "particuliers.jpg"
        $spec_file3 = "authfort.php"
        $spec_file4 = "securepass.php"

    condition:
        uint32(0) == 0x04034b50 and
        $zip_file and
        $spec_dir and
        // check for file
        all of ($spec_file*)
}
