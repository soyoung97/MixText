nsml run -d yahoo_answers -e ./code/train.py -g 4 -a "--n-labeled 10 --data-path ./data/yahoo_answers_csv/train --batch-size 4 --batch-size-u 8 --epochs 20 --val-iteration 1000 \
--lambda-u 1 --T 0.5 --alpha 16 --mix-layers-set 7 9 12 \
--lrmain 0.000005 --lrlast 0.0005 "
