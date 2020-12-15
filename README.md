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

### Compatibilty

Due to the way scoped storage works in API 29 and on, the "DoEvil" app only
works on API 28 and earlier. Since the goal of the use of external storage is
only to prove that the exploit portion of code has run, it is not a priority
to update it to conform to the new convoluted requirements of supporting legacy
external storage in API 29 and later.

### Scenario

A good-willed app developer made an application called "MemeLoader!" which
pulls images from a server (For simplicity's sake, I hardcoded the server to
10.0.2.2, Android's dedicated IP for the host machine of an AVD). The goal of
the project is to demonstrate malicious acitons in an add-on trojan.

This theoretically opens up the possiblity of creating static methods which
keep alive in the background, reporting various metadata to a telemetry server
for use in data collection or attacks. An app like this could easily be added
to apkmirror or similar. The attacker could even likely add in a splash which
explains new permissions it is requesting in the hopes that users will likely
blindly approve new permissions of a premium app like "MemeLoader!"

### Created with

```
Android SDK (Android Studio/Gradle v4.0.1)
python3
```
