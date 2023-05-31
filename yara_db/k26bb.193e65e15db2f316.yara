
rule k26bb_193e65e15db2f316
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k26bb.193e65e15db2f316"
     cluster="k26bb.193e65e15db2f316"
     cluster_size="9"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="installcore malicious unwanted"
     md5_hashes="['f0064b2821f1daf8f5c6b349e76f10122a4115a3','f936e1a3a968a7da326cd7968d1a8ddf67ceb2e2','10f0b02ded8c11d99ba385c8dee43e01e0211991']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k26bb.193e65e15db2f316"

   strings:
      $hex_string = { 40ec85c075de5aeb1b8a1a8a4e06ebe88a5c0e06321c0a80e3df75ed4975f18b065a01d05f5e5bc3525153ff50f431d28d4c2410648b1a8919896908c74104ed }

   condition:
      
      filesize > 1048576 and filesize < 4194304
      and $hex_string
}
