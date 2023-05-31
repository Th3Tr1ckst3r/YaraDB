rule EvilGnome_Linux: infostealer linuxmalware
{
    meta:
        Description = "Detects the EvilGnome backdoor malware designed for Linux desktops, which disguises itself as a Gnome extension."
        Reference = "https://www.intezer.com/blog-evilgnome-rare-malware-spying-on-linux-desktop-users/"

    strings:

        $ftype0 = ".doc" ascii fullword
        $ftype1 = ".docx" ascii fullword
        $ftype2 = ".pdf" ascii fullword
        $ftype3 = ".rtf" ascii fullword

        $cpp0  = "_GLOBAL__sub_I_application.cpp" ascii
        $cpp1  = "_GLOBAL__sub_I_shooterPing.cpp" ascii
        $cpp2  = "_GLOBAL__sub_I_packetBase.cpp" ascii
        $cpp3  = "_GLOBAL__sub_I_parameters.cpp" ascii
        $cpp4  = "_GLOBAL__sub_I_session.cpp" ascii
        $cpp5  = "_GLOBAL__sub_I_packet.cpp" ascii
        $cpp6  = "_GLOBAL__sub_I_rc5.cpp" ascii
        $cpp7  = "shooterImage.cpp" ascii
        $cpp8  = "shooterSound.cpp" ascii
        $cpp9  = "shooterFile.cpp" ascii
        $cpp10  = "../session.cpp" ascii
        $cpp12 = "shooterKey.cpp" ascii
        $cpp13  = "tcpSocket.cpp" ascii
        $cpp14  = "shooter.cpp" ascii
        $cpp15  = "logger.cpp" ascii
        $cpp16  = "engine.cpp" ascii
        $cpp17 = "main.cpp" ascii

        $path0 = ".lib" ascii fullword
        $path1  = "opt" ascii fullword
        $path2  = "proc" ascii fullword
        $path3  = "root" ascii fullword
        $path4  = "run" ascii fullword
        $path5  = "sbin" ascii fullword
        $path6  = "snap" ascii fullword
        $path7  = "srv" ascii fullword
        $path8  = "sys" ascii fullword
        $path9  = "tmp" ascii fullword
        $path10  = "usr" ascii fullword
        $path11  = "boot" ascii fullword
        $path12  = "var" ascii fullword
        $path13  = "cdrom" ascii fullword
        $path14  = "dev" ascii fullword
        $path15  = "etc" ascii fullword
        $path16 = "lib" ascii fullword
        $path17  = "lib32" ascii fullword
        $path18  = "lib64" ascii fullword
        $path19  = "lost+found" ascii fullword

    condition:
        (uint32be(0x0) == 0x7f454c46)
        and
        10 of ($cpp*)
        and all of ($ftype*)
        and all of ($path*)
}
