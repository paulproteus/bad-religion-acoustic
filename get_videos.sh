#!/bin/bash
youtube-dl -x 'https://www.youtube.com/playlist?list=PL59CFAE919414FBF3' -o '%(uploader)s --- %(playlist)s --- %(autonumber)s --- %(title)s.%(ext)s'
