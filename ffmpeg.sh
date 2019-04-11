#!/bin/bash
wget https://johnvansickle.com/ffmpeg/builds/ffmpeg-git-amd64-static.tar.xz
tar xvf ffmpeg-git-amd64-static.tar.xz && rm -rf ffmpeg-git-*-static.tar.xz
mv ffmpeg-git-*/ffmpeg  ffmpeg-git-*/ffprobe /usr/bin/
rm -r ffmpeg-git-*
