#!/bin/sh

case "${GPU_RAM:-'12GB'}" in
	'6GB') 
		resnet50=32
		resnet152=16
		inception3=32
		inception4=8
		vgg16=32
		alexnet=256
		ssd300=16
		;;
	'8GB')
		resnet50=48
		resnet152=32
		inception3=48
		inception4=12
		vgg16=48
		alexnet=384
		ssd300=32
		;;
	'12GB'|'11GB')
		resnet50=64
		resnet152=32
		inception3=64
		inception4=16
		vgg16=56
		alexnet=512
		ssd300=32
		;;
	'16GB')
		resnet50=96
		resnet152=64
		inception3=96
		inception4=24
		vgg16=96
		alexnet=768
		ssd300=64
		;;		
	'23GB'|'24GB')
		resnet50=128
		resnet152=64
		inception3=128
		inception4=32
		vgg16=128
		alexnet=1024
		ssd300=64
		;;
	'31GB'|'32GB')
		resnet50=192
		resnet152=96
		inception3=192
		inception4=48
		vgg16=192
		alexnet=1536
		ssd300=96
		;;
	'47GB'|'48GB')
		resnet50=256
		resnet152=128
		inception3=256
		inception4=64
		vgg16=256
		alexnet=2048
		ssd300=128
		;;
	*) echo "Batchsize for VRAM size '$GPU_RAM' not optimized" >&2;;
esac
