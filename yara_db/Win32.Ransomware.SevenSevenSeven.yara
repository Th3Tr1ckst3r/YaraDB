rule Win32_Ransomware_SevenSevenSeven : tc_detection malicious
{
    meta:

        author              = "ReversingLabs"

        source              = "ReversingLabs"
        status              = "RELEASED"
        sharing             = "TLP:WHITE"
        category            = "MALWARE"
        malware             = "SEVENSEVENSEVEN"
        description         = "Yara rule that detects SevenSevenSeven ransomware."

        tc_detection_type   = "Ransomware"
        tc_detection_name   = "SevenSevenSeven"
        tc_detection_factor = 5

    strings:

        $file_search_p1 = {                        
            55 8B EC 6A ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 64 A1 ?? ?? ?? ?? 50 64 89 25 ?? ?? ?? 
            ?? 81 EC ?? ?? ?? ?? A1 ?? ?? ?? ?? 89 45 ?? 53 56 57 89 65 ?? BE ?? ?? ?? ?? 89 75 
            ?? 33 DB 89 5D ?? 88 5D ?? 89 75 ?? 89 5D ?? 88 5D ?? 89 75 ?? 88 5D ?? 68 ?? ?? ?? 
            ?? 8B 45 ?? 50 8D 8D ?? ?? ?? ?? 51 E8 ?? ?? ?? ?? 83 C4 ?? 6A ?? 53 50 8D 4D ?? E8 
            ?? ?? ?? ?? BF ?? ?? ?? ?? 39 BD ?? ?? ?? ?? 72 ?? 8B 95 ?? ?? ?? ?? 52 E8 ?? ?? ?? 
            ?? 83 C4 ?? 39 7D ?? 8B 45 ?? 73 ?? 8D 45 ?? 8D 8D ?? ?? ?? ?? 51 50 FF 15 ?? ?? ?? 
            ?? 89 85 ?? ?? ?? ?? 83 F8 ?? 0F 84 ?? ?? ?? ?? EB ?? BE ?? ?? ?? ?? 90 6A ?? 53 8D 
            4D ?? E8 ?? ?? ?? ?? 8D 95 ?? ?? ?? ?? 52 68 ?? ?? ?? ?? 8B 45 ?? 50 8D 8D ?? ?? ?? 
            ?? 51 E8 ?? ?? ?? ?? 83 C4 ?? 50 8D 95 ?? ?? ?? ?? 52 E8 ?? ?? ?? ?? 83 C4 ?? 6A ?? 
            53 50 8D 4D ?? E8 ?? ?? ?? ?? 39 BD ?? ?? ?? ?? 72 ?? 8B 85 ?? ?? ?? ?? 50 E8 ?? ?? 
            ?? ?? 83 C4 ?? 89 B5 ?? ?? ?? ?? 89 9D ?? ?? ?? ?? 88 9D ?? ?? ?? ?? 39 BD ?? ?? ?? 
            ?? 72 ?? 8B 8D ?? ?? ?? ?? 51 E8 ?? ?? ?? ?? 83 C4 ?? 89 B5 ?? ?? ?? ?? 89 9D ?? ?? 
            ?? ?? 88 9D ?? ?? ?? ?? 39 7D ?? 8B 75 ?? 73 ?? 8D 75 ?? 68 ?? ?? ?? ?? 56 FF 15 ?? 
            ?? ?? ?? 85 C0 74 ?? B8 ?? ?? ?? ?? EB ?? 68 ?? ?? ?? ?? 56 FF 15 ?? ?? ?? ?? 85 C0
        }

        $file_search_p2 = {                        
            74 ?? B8 ?? ?? ?? ?? EB ?? 68 ?? ?? ?? ?? 56 FF 15 ?? ?? ?? ?? F7 D8 1B C0 F7 D8 3B 
            C3 0F 85 ?? ?? ?? ?? 80 BD ?? ?? ?? ?? ?? 0F 84 ?? ?? ?? ?? F6 85 ?? ?? ?? ?? ?? 74 
            ?? 8B 45 ?? 3A C3 0F 84 ?? ?? ?? ?? 50 8D 55 ?? 52 E8 ?? ?? ?? ?? 83 C4 ?? 8B F0 3B 
            F3 0F 84 ?? ?? ?? ?? 39 7D ?? 72 ?? 8B 45 ?? 50 E8 ?? ?? ?? ?? 83 C4 ?? 39 7D ?? 72 
            ?? 8B 4D ?? 51 E8 ?? ?? ?? ?? 83 C4 ?? C7 45 ?? ?? ?? ?? ?? 89 5D ?? 88 5D ?? 39 7D 
            ?? 0F 82 ?? ?? ?? ?? 8B 55 ?? 52 E8 ?? ?? ?? ?? 83 C4 ?? 8B C6 E9 ?? ?? ?? ?? 8D 85 
            ?? ?? ?? ?? 50 FF 15 ?? ?? ?? ?? 8B F0 38 1E 74 ?? 68 ?? ?? ?? ?? 56 FF 15 ?? ?? ?? 
            ?? 85 C0 74 ?? 68 ?? ?? ?? ?? 56 FF 15 ?? ?? ?? ?? 85 C0 74 ?? 68 ?? ?? ?? ?? 56 FF 
            15 ?? ?? ?? ?? 85 C0 74 ?? 68 ?? ?? ?? ?? 56 FF 15 ?? ?? ?? ?? 85 C0 74 ?? 89 5D ?? 
            39 7D ?? 8B 45 ?? 73 ?? 8D 45 ?? 50 E8 ?? ?? ?? ?? 83 C4 ?? C7 45 ?? ?? ?? ?? ?? EB 
            ?? B8 ?? ?? ?? ?? C3 
        }

        $encrypt_file_1 = {                        
            81 EC ?? ?? ?? ?? A1 ?? ?? ?? ?? 55 8B AC 24 ?? ?? ?? ?? 56 55 89 84 24 ?? ?? ?? ?? 
            33 F6 FF 15 ?? ?? ?? ?? 33 C9 85 C0 76 ?? 8D 9B ?? ?? ?? ?? 80 3C 29 ?? 75 ?? 46 41 
            3B C8 72 ?? 83 FE ?? 75 ?? 5E 33 C0 5D 8B 8C 24 ?? ?? ?? ?? E8 ?? ?? ?? ?? 81 C4 ?? 
            ?? ?? ?? C3 57 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? 68 ?? ?? ?? ?? 55 FF 15 ?? ?? ?? ?? 8B 
            F8 83 FF ?? 75 ?? 5F 5E 33 C0 5D 8B 8C 24 ?? ?? ?? ?? E8 ?? ?? ?? ?? 81 C4 ?? ?? ?? 
            ?? C3 53 6A ?? 57 FF 15 ?? ?? ?? ?? 8B D8 83 FB ?? 73 ?? 57 FF 15 ?? ?? ?? ?? 5B 5F 
            5E 33 C0 5D 8B 8C 24 ?? ?? ?? ?? E8 ?? ?? ?? ?? 81 C4 ?? ?? ?? ?? C3 53 6A ?? FF 15 
            ?? ?? ?? ?? 6A ?? 6A ?? 6A ?? 57 8B F0 FF 15 ?? ?? ?? ?? 6A ?? 8D 44 24 ?? 50 53 56 
            57 FF 15 ?? ?? ?? ?? 33 C0 85 DB 76 ?? 8D 49 ?? 80 34 30 ?? 40 3B C3 72 ?? 6A ?? 6A 
            ?? 6A ?? 57 FF 15 ?? ?? ?? ?? 6A ?? 8D 4C 24 ?? 51 53 56 57 FF 15 ?? ?? ?? ?? 57 FF 
            15 ?? ?? ?? ?? 8D 54 24 ?? 52 FF 15 ?? ?? ?? ?? 0F B7 44 24 ?? 0F B7 4C 24 ?? 0F B7 
            54 24 ?? 68 ?? ?? ?? ?? 50 0F B7 44 24 ?? 51 0F B7 4C 24 ?? 52 0F B7 54 24 ?? 50 51 
            52 55 8D 44 24 ?? 68 ?? ?? ?? ?? 50 FF 15 ?? ?? ?? ?? 8D 4C 24 ?? 51 68 ?? ?? ?? ?? 
            E8 ?? ?? ?? ?? 83 C4 ?? 8D 54 24 ?? 52 55 FF 15 ?? ?? ?? ?? 56 FF 15 ?? ?? ?? ?? 8B 
            8C 24 ?? ?? ?? ?? 5B 5F 5E B8 ?? ?? ?? ?? 5D E8 ?? ?? ?? ?? 81 C4 ?? ?? ?? ?? C3 
        }

        $encrypt_file_2 = {                        
            81 EC ?? ?? ?? ?? A1 ?? ?? ?? ?? 55 8B AC 24 ?? ?? ?? ?? 56 55 89 84 24 ?? ?? ?? ?? 
            33 F6 FF 15 ?? ?? ?? ?? 33 C9 85 C0 76 ?? 8D 9B ?? ?? ?? ?? 80 3C 29 ?? 75 ?? 46 41 
            3B C8 72 ?? 83 FE ?? 74 ?? 6A ?? 6A ?? 6A ?? 6A ?? 6A ?? 68 ?? ?? ?? ?? 55 FF 15 ?? 
            ?? ?? ?? 8B F0 83 FE ?? 75 ?? 5E 33 C0 5D 8B 8C 24 ?? ?? ?? ?? E8 ?? ?? ?? ?? 81 C4 
            ?? ?? ?? ?? C3 53 6A ?? 56 FF 15 ?? ?? ?? ?? 8B D8 83 FB ?? 73 ?? 56 FF 15 ?? ?? ?? 
            ?? 5B 5E 33 C0 5D 8B 8C 24 ?? ?? ?? ?? E8 ?? ?? ?? ?? 81 C4 ?? ?? ?? ?? C3 57 8D 83 
            ?? ?? ?? ?? 50 6A ?? FF 15 ?? ?? ?? ?? 6A ?? 6A ?? 6A ?? 56 8B F8 FF 15 ?? ?? ?? ?? 
            6A ?? 8D 4C 24 ?? 51 53 57 56 FF 15 ?? ?? ?? ?? 8B CB C1 E9 ?? 41 74 ?? 8D 47 ?? B2 
            ?? 80 70 ?? ?? 80 70 ?? ?? 80 30 ?? 80 70 ?? ?? 80 70 ?? ?? 80 70 ?? ?? 80 70 ?? ?? 
            30 50 ?? 83 C0 ?? 49 75 ?? 6A ?? 6A ?? 6A ?? 56 FF 15 ?? ?? ?? ?? 6A ?? 8D 54 24 ?? 
            52 53 57 56 FF 15 ?? ?? ?? ?? 56 FF 15 ?? ?? ?? ?? 8D 44 24 ?? 50 FF 15 ?? ?? ?? ?? 
            0F B7 4C 24 ?? 0F B7 54 24 ?? 0F B7 44 24 ?? 68 ?? ?? ?? ?? 51 0F B7 4C 24 ?? 52 0F 
            B7 54 24 ?? 50 0F B7 44 24 ?? 51 52 50 55 8D 4C 24 ?? 68 ?? ?? ?? ?? 51 FF 15 ?? ?? 
            ?? ?? 8D 54 24 ?? 52 68 ?? ?? ?? ?? E8 ?? ?? ?? ?? 83 C4 ?? 8D 44 24 ?? 50 55 FF 15 
            ?? ?? ?? ?? 57 FF 15 ?? ?? ?? ?? 8B 8C 24 ?? ?? ?? ?? 5F 5B 5E B8 ?? ?? ?? ?? 5D E8 
            ?? ?? ?? ?? 81 C4 ?? ?? ?? ?? C3 
        }

        $remote_server_1 = {                        
            81 EC ?? ?? ?? ?? A1 ?? ?? ?? ?? 53 55 56 57 68 ?? ?? ?? ?? 89 84 24 ?? ?? ?? ?? E8 
            ?? ?? ?? ?? 50 68 ?? ?? ?? ?? 8D 84 24 ?? ?? ?? ?? 68 ?? ?? ?? ?? 50 FF 15 ?? ?? ?? 
            ?? 8D 8C 24 ?? ?? ?? ?? 51 E8 ?? ?? ?? ?? 83 C4 ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? FF 
            15 ?? ?? ?? ?? 33 FF 57 6A ?? 68 ?? ?? ?? ?? 57 FF 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 
            ?? ?? ?? ?? FF 15 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 8B 35 ?? ?? ?? ?? 89 44 24 ?? 33 DB 
            BD ?? ?? ?? ?? 8B 44 24 ?? BA ?? ?? ?? ?? 8B CB D3 E2 85 D0 0F 84 ?? ?? ?? ?? 8A CB 
            8D 54 24 ?? 80 C1 ?? 52 88 4C 24 ?? 66 C7 44 24 ?? ?? ?? FF D6 83 F8 ?? 74 ?? 8D 44 
            24 ?? 50 FF D6 83 F8 ?? 75 ?? 8D 44 24 ?? 89 6C 24 ?? 89 7C 24 ?? C6 44 24 ?? ?? 8D 
            50 ?? 8A 08 40 84 C9 75 ?? 2B C2 50 8D 4C 24 ?? 51 8D 4C 24 ?? E8 ?? ?? ?? ?? 8D 54 
            24 ?? 6A ?? 52 E8 ?? ?? ?? ?? 8B 44 24 ?? 83 C4 ?? 83 F8 ?? 72 ?? 8B 44 24 ?? 50 E8 
            ?? ?? ?? ?? 83 C4 ?? 89 6C 24 ?? 89 7C 24 ?? C6 44 24 ?? ?? 43 83 FB ?? 0F 8C ?? ?? 
            ?? ?? E8 ?? ?? ?? ?? E8 ?? ?? ?? ?? 57 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 57 FF 15 ?? ?? 
            ?? ?? 8B 8C 24 ?? ?? ?? ?? 5F 5E 5D 33 C0 5B E8 ?? ?? ?? ?? 81 C4 ?? ?? ?? ?? C2 
        }

        $remote_server_2 = {                        
            81 EC ?? ?? ?? ?? A1 ?? ?? ?? ?? 57 33 FF 57 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 57 89 84 
            24 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 8D 44 24 ?? 50 FF 15 ?? ?? ?? ?? 66 83 7C 24 ?? ?? 
            0F 85 ?? ?? ?? ?? 66 83 7C 24 ?? ?? 0F 87 ?? ?? ?? ?? 53 55 56 68 ?? ?? ?? ?? E8 ?? 
            ?? ?? ?? 50 68 ?? ?? ?? ?? 8D 8C 24 ?? ?? ?? ?? 68 ?? ?? ?? ?? 51 FF 15 ?? ?? ?? ?? 
            8D 94 24 ?? ?? ?? ?? 52 E8 ?? ?? ?? ?? 83 C4 ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? FF 15 
            ?? ?? ?? ?? 57 6A ?? 68 ?? ?? ?? ?? 57 FF 15 ?? ?? ?? ?? 68 ?? ?? ?? ?? 68 ?? ?? ?? 
            ?? FF 15 ?? ?? ?? ?? FF 15 ?? ?? ?? ?? 8B 35 ?? ?? ?? ?? 89 44 24 ?? 33 DB BD ?? ?? 
            ?? ?? 8B CB B8 ?? ?? ?? ?? D3 E0 8B 4C 24 ?? 85 C1 0F 84 ?? ?? ?? ?? 8A D3 8D 44 24 
            ?? 80 C2 ?? 50 88 54 24 ?? 66 C7 44 24 ?? ?? ?? FF D6 83 F8 ?? 74 ?? 8D 4C 24 ?? 51 
            FF D6 83 F8 ?? 75 ?? 8D 44 24 ?? 89 6C 24 ?? 89 7C 24 ?? C6 44 24 ?? ?? 8D 50 ?? 8A 
            08 40 84 C9 75 ?? 2B C2 50 8D 54 24 ?? 52 8D 4C 24 ?? E8 ?? ?? ?? ?? 8D 44 24 ?? 6A 
            ?? 50 E8 ?? ?? ?? ?? 8B 44 24 ?? 83 C4 ?? 83 F8 ?? 72 ?? 8B 4C 24 ?? 51 E8 ?? ?? ?? 
            ?? 83 C4 ?? 89 6C 24 ?? 89 7C 24 ?? C6 44 24 ?? ?? 43 83 FB ?? 0F 8C ?? ?? ?? ?? E8 
            ?? ?? ?? ?? E8 ?? ?? ?? ?? 57 68 ?? ?? ?? ?? 68 ?? ?? ?? ?? 57 FF 15 ?? ?? ?? ?? 8B 
            8C 24 ?? ?? ?? ?? 5E 5D 5B 33 C0 5F E8 ?? ?? ?? ?? 81 C4 ?? ?? ?? ?? C2 ?? ?? 57 FF 
            15
        }

    condition:
        uint16(0) == 0x5A4D and 
        (
            all of ($file_search_p*) 
        )
        and 
        (
            (
                (
                    $encrypt_file_1
                ) and
                (
                    $remote_server_1
                )
            )
            or
            ( 
                (   
                    $encrypt_file_2
                ) and 
                (
                    $remote_server_2
                )
            )
        )
}