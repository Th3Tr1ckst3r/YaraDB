
rule m2321_0b3992d1cc000912
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m2321.0b3992d1cc000912"
     cluster="m2321.0b3992d1cc000912"
     cluster_size="4"
     filetype = "application/gzip"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171118"
     license = "RIL-1.0 [Rick's Internet License] "
     family="dinwod kazy trojandropper"
     md5_hashes="['24194d4fcd96081eca8f298357c5bedf','59ca3b0897d89f19a88b5c4622b52976','c9dd414300b790e4122a350329504369']"

   strings:
      $hex_string = { c7b3b6178ae90eeb3415e5cd25879bad429ef204fc84365d78039f1e4d49811f61d3cffdb28d6c7ebae8793e20ff777548d7fe802ddf1d749d147afbee990296 }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
