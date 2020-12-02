# Androjan

Memeloader mimicks a legitimate program. From a compiled apk of Memeloader,
we're going to insert a compiled version of DoEvil in smali. As a proof of
concept, DoEvil downloads an image from a separate image server and saves it in
a publicly writeable directory to prove access to both unauthorized networking
functions and user-writeable storage.

Python http servers are set to run on linux. Some basic changes to the script
should get you up and running. IP addresses in the android applications are
hardcoded to the reserved IP 10.0.2.2 which directs to the host machine of the
Android VM.



## Dependencies

```
Android SDK (Android Studio/Gradle v4.0.1)
python3
```
