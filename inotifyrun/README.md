# inotifyrun

This is a really usefull script I used a lot. However, it is not from me, I found it on [exyr.org](https://exyr.org/2011/inotify-run/). 

It will check the file within the current directory (maybe I'll modify it later in order to use it on specific files rather than on the entire current directory).

## How to

Let's say you are working on a website and you want to see the result in chrome without having to:

* save your files
* select your browser
* click on the refresh button

You can simply do: 

```bash
inotifyrun xdotool search --name 'Chromium' key F5
```

or, if your are experimenting the same issue as the original poster: 

```bash
xdotool search --name Chromium key --window %@ F5
```

If you want to launch a series of command, just think about Makefiles. 
