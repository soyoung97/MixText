baseline:
	nsml run -d ppy --memory 20G --shm-size 20G -e ./code/normal_train.py -g 1 -c 20 -a "--n-labeled 10 --data-path /data/ppy/train/ --batch-size 8 --epochs 20"

tmix:
	nsml run -d ppy --memory 20G --shm-size 20G -e ./code/train.py -g 1 -c 20 -a "--n-labeled 10 --data-path /data/ppy/train/ --batch-size 8 --batch-size-u 1 --epochs 50 --val-iteration 20 \
--lambda-u 0 --T 0.5 --alpha 16 --mix-layers-set 7 9 12 --separate-mix --mix-option"

mixtext:
	nsml run -d ppy --memory 20G --shm-size 20G -e ./code/train.py -g 4 -c 20 -a "--n-labeled 10 --data-path /data/ppy/train/ --batch-size 4 --batch-size-u 8 --epochs 20 --val-iteration 1000 \
--lambda-u 1 --T 0.5 --alpha 16 --mix-layers-set 7 9 12 \
--lrmain 0.000005 --lrlast 0.0005 --mix-option"


tmix-nomix:
	nsml run -d ppy --memory 20G --shm-size 20G -e ./code/train.py -g 1 -c 20 -a "--n-labeled 10 --data-path /data/ppy/train/ --batch-size 8 --batch-size-u 1 --epochs 50 --val-iteration 20 \
--lambda-u 0 --T 0.5 --alpha 16 --mix-layers-set 7 9 12 --separate-mix"


tmix-aug:
	nsml run -d ppy --memory 20G --shm-size 20G -e ./code/train.py -g 1 -c 20 -a "--n-labeled 10 --data-path /data/ppy/train/ --batch-size 8 --batch-size-u 1 --epochs 50 --val-iteration 20 \
--lambda-u 0 --T 0.5 --alpha 16 --mix-layers-set 7 9 12 --separate-mix --mix-option --train_aug"

