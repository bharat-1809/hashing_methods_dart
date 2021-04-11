# Fastest Hashing Method in Dart

This is a simple experiment to find the fastest hashing method in Dart.

## Result:

The experiment was performed on a list of open source licenses. Time taken to hash these licenses was noted. A total of 1000 readings were taken and average time to hash the license list was calculated:
        
        - crc32 --> 0.238 ms
        - adler32 --> 0.224 ms
        - md5 --> 0.458 ms
        - sha1 --> 0.546 ms
        - sha224 --> 0.725 ms
        - sha256 --> 0.733 ms
        - sha384 --> 0.543 ms
        - sha512 --> 0.552 ms
        - sha512/224 --> 0.55 ms
        - sha512/256 --> 0.548 ms

After seeing the observations we can say that `adler32` hashing method is the fastest, however its [collision rate](https://rsaxvc.net/blog/2016/2/7/Graphical_Analysis_of_Collision_Rates_of_Various_CRCs.html) is much higher than `crc32`.

So for generating non-cryptographic hashes `crc32` algorithm would be an ideal choice. 