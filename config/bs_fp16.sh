#!/bin/sh

case "${GPU_RAM:-'12GB'}" in
	'6GB') 
		resnet50=64
		resnet152=32
		inception3=64
		inception4=16
		vgg16=64
		alexnet=512
		ssd300=32
		;;
	'8GB')
		resnet50=48
		resnet152=32
		inception3=24
		inception4=28
		vgg16=48
		alexnet=768
		ssd300=64
		;;
	'11GB'|'10GB')
		resnet50=48
		resnet152=32
		inception3=24
		inception4=28
		vgg16=48
		alexnet=960
		ssd300=64
		;;
	'12GB')
		resnet50=128
		resnet152=64
		inception3=128
		inception4=32
		vgg16=120
		alexnet=1024
		ssd300=64
		;;
	'16GB')
		resnet50=192
		resnet152=128
		inception3=192
		inception4=48
		vgg16=192
		alexnet=1536
		ssd300=128
		;;		
	'22GB'|'23GB'|'24GB')
		resnet50=96
		resnet152=64
		inception3=48
		inception4=56
		vgg16=96
		alexnet=1920
		ssd300=128
		;;
	'31GB'|'32GB')
		resnet50=384
		resnet152=192
		inception3=384
		inception4=96
		vgg16=384
		alexnet=3072
		ssd300=192
		;;
	'39GB'|'40GB')
		resnet50=448
		resnet152=200
		inception3=360
		inception4=112
		vgg16=448
		alexnet=3584
		ssd300=224
		;;
	'47GB'|'48GB')
		resnet50=512
		resnet152=256
		inception3=512
		inception4=128
		vgg16=512
		alexnet=4096
		ssd300=256
		;;
	*) echo "Batchsize for VRAM size '$GPU_RAM' not optimized" >&2;;
esac
