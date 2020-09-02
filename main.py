import os
os.system("pip install pytorch_transformers")
import nsml
print(nsml.DATASET_PATH)

os.system('python ./code/train.py --n-labeled 10 --data-path '+ nsml.DATASET_PATH + '/train/ --batch-size 4 --batch-size-u 8 --epochs 20 --val-iteration 1000 --lambda-u 1 --T 0.5 --alpha 16 --mix-layers-set 7 9 12 --lrmain 0.000005 --lrlast 0.00005'
)

