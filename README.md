# TreAlnVu!

This application is gonna be awesome. Seriously, you're gonna love it. Ya, we know. There are more tree viewers out there than you can shake a stick at, and a lot of them are really great. But there aren't that many that are in browser and standards compliant (rather than Flash/Java), and also not many that let you look at sequence alignments and metadata (easily, anyway). These are the goals of this project. We also hope to make this tablet friendly, so that navigating trees can be *that* awesome.

## Development

Here is how things are broken down for the moment.

### Server side...

This is a Sinatra app. Since almost *everything* here is client side, this is at least for the moment, a *SUPER* light app that serves up application file from the public directory (`index.html`, the `trealnvu.js` file, other javascripts and stylesheets, etc.) and data from the data directory. Later we may add the ability to serve up data more flexibly, but till we've felt things out a bit, right now this is just the simplest possible substrate for holding things together.

### The js...

This application is being built using jquery, d3 and bootstrap (mostly the former two, the latter just for a bit of styling/layout help). The goal is to write some pretty flexible and modular javascript that makes it possible to very simply load the data with a function call or two.

### The data

Currently, there is some test data to play with. This came from R's ape package, the `woodmouse` data set, which has 16 or so sequences in fasta format. These sequences were cleaned with `seqmagick`, aligned with `muscle`, translated (poorly, for the moment) with `??? I forgot` and a tree built using `FastTree`. The metadata is entirely fake, but maps sequence names to various characteristics, like size, weight and color.

The sinatra application serves this data in such a fashion that making a request for `/data/aligned.fasta` (for example), returns the text content within the `data/aligned.fasta` file.


## More to come soon...
