
rule m2377_3a99408986200b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m2377.3a99408986200b12"
     cluster="m2377.3a99408986200b12"
     cluster_size="7"
     filetype = "HTML document"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171120"
     license = "RIL-1.0 [Rick's Internet License] "
     family="ramnit html script"
     md5_hashes="['1d53b4563581b14ce5ae131a2439f320','452803a33d48b308baa8d7fadded218a','daea7c888f4abb6aa0c16281973cd53b']"

   strings:
      $hex_string = { 39303238313643343433464641413944383146373233343944453643313937353932463643423731413541353830364244304531353432334536373632303835 }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
