
rule k3f7_49049ab9c8800932
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k3f7.49049ab9c8800932"
     cluster="k3f7.49049ab9c8800932"
     cluster_size="10"
     filetype = "text/html"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171122"
     license = "RIL-1.0 [Rick's Internet License] "
     family="redirector script html"
     md5_hashes="['269e31623f206991bc669697682df108','422441b3832246fa16d0b17bc3bbd263','fc41701e01889784fa85815c9fa4f9b0']"

   strings:
      $hex_string = { e9d1e7bec6b5ead3c5bbddd4a4b6a9b7fecef1a1a322202f3e0d0a3c7374796c6520747970653d22746578742f637373223e0d0a626f6479207b6d617267696e }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
