
rule k2319_3a44ea92c85a6b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2319.3a44ea92c85a6b12"
     cluster="k2319.3a44ea92c85a6b12"
     cluster_size="3"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="kryptik script aknjt"
     md5_hashes="['7331f13311008e333553f252d226800fb350f33d','4f46c0f2fc2e4f0eed16f638d0617945a5f58a88','2c4d1f169f2925776c63aea153fbefc1b6d94026']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2319.3a44ea92c85a6b12"

   strings:
      $hex_string = { 4a5d213d3d756e646566696e6564297b72657475726e206f5b4a5d3b7d76617220723d282835392e2c39382e304531293e3d28307831372c38362e344531293f }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
