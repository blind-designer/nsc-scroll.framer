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


scroller = ScrollComponent.wrap(sk.artb)
scroller.scrollHorizontal = false
scroller.backgroundColor = "#E4F2F2"
scroller.contentInset = 
	top: 0
	right: 0
	bottom: -600
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
#vid.player.play()

scroller.onMove ->
	sk.bglayer
