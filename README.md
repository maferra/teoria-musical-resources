# teoria-musical-resources

Resource files for my freely available Portuguese-written music theory book at [teoria-musical.com](https://teoria-musical.com/)

Remarkable software used:

+ [LilyPond](https://lilypond.org/) is used for generating the highest-quality sheet music possible
+ [FFmpeg](https://ffmpeg.org/) used to convert audio files from AIFF to MP3
+ [MATLAB](https://www.mathworks.com/) used for analysing and plotting the [power spectrum](https://www.mathworks.com/help/signal/ref/pspectrum.html) of the audio signal produced by an acoustic piano (A4) and a gong

## House-keeping
For reference, usually not needed.

Update .ly input files in-place to the latest version (and make a numbered backup)
```
for /r %i in (*.ly) do convert-ly.py -b -e %i
```

Convert .ly to .svg and resize the page to contain the content as necessary
```
for /r %i in (*.ly) do lilypond.exe --svg -dno-point-and-click -duse-paper-size-for-page="#f" --verbose %i
```
