rule unpackedCerber {
    meta:
        Author = "Checkmate"
        Description = "Simple yara rule for unpacked cerber ransomware samples"
        MD5 = "9a7f87c91bf7e602055a5503e80e2313"

    strings:
        $entry = "nosj" private // JSON Parser
        $keys = "Keysize: %d, Encryption time: %d" fullword wide
        $vendors = /{"vendors":................................/is // {"vendors":["VirusBlokAda","Malwarebytes"]}
        $crypted = "Total files found: %d, Files crypted: %d" fullword wide
        $done = "done!" fullword wide

    condition:
        $entry or $keys or $vendors or $done or $crypted
}