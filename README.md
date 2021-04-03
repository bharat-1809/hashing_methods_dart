# Fastest Hashing Method in Dart

This is a simple experiment to find the fastest hashing method in Dart.

## Result:

The experiment was performed on a list of open source licenses. Time taken to hash these licenses was noted. A total of 1000 readings were taken and average time to hash the license list was calculated:
        
        - md5 --> 0.488 ms
        - sha1 --> 0.605 ms
        - sha224 --> 0.782 ms
        - sha256 --> 0.773 ms
        - sha384 --> 0.597 ms
        - sha384 --> 0.547 ms
        - sha512 --> 0.615 ms
        - sha512/224 --> 0.617 ms
        - sha512/256 --> 0.612 ms

After seeing the observations we can say that `md5` hashing method is the fastest in case of Dart