# docker-gohugo

Docker image for [hugo static site generator](http://gohugo.io)

#### Run docker image
```
docker run --rm -p 1313:1313 -v $(pwd):/root/hugo krolow/gohugo serve --bind=0.0.0.0
```

#### Run hugo command
To be more easy to run i have created one [bash script](https://github.com/krolow/docker-gohugo/blob/master/hugo) to make life easy...

Once you download and set to be loaded with your bash or into your bin you only execute the follow:

```bash
hugo serve
```

or can point out the folder

```bash
hugo /home/krolow/myproject/ serve -w
```

### Features

* [Highlight support by Pygments](https://gohugo.io/extras/highlighting/)
* Bash (if you want to write inside docker)
* Hugo script to exec as it was directly in host


## License

Licensed under [The MIT License](http://krolow.mit-license.org/)
Redistributions of files must retain the above copyright notice.

## Author

Vinícius Krolow - krolow[at]gmail.com

