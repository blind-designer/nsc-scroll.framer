# Project Info
# This info is presented in a widget when you share.
# http://framerjs.com/docs/#info.info

Framer.Info =
	title: ""
	author: "Anton Nesterov"
	twitter: ""
	description: ""


# Import file "new-star-proto2"
sk = Framer.Importer.load("imported/new-star-proto2@1x")
bg = new BackgroundLayer
	backgroundColor: '#222';
sk.artb.height = 800
sk.artb.clip = true
sk.artb.center()


scroller = ScrollComponent.wrap(sk.mainlayer)
scroller.superLayer = sk.artb
scroller.scrollHorizontal = false
scroller.backgroundColor = ""
scroller.contentInset = 
	top: 0
	right: 0
	bottom: 400
	left: 0
	
vid = new VideoLayer
	video: 'images/camp_hilites_2.mp4'
	superLayer: sk.bglayer
	x: -200
	y: 105
	width: 1680
	height: 900
	backgroundColor: ""

vid.player.loop = true
vid.player.play()

base1 = sk.bglayer.y - scroller.content.y
base2 = sk.midlayer.y - scroller.content.y
base3 = sk.photolayer.y - scroller.content.y


scroller.onMove ->
	sk.bglayer.y = scroller.content.y * 0.8 + base1 
	sk.midlayer.y = scroller.content.y * 1.1 + base2 
	sk.photolayer.y = scroller.content.y * 1.2 + base3