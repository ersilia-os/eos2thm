import sys
import csv
import os

sys.path.append(".")

from molbert.utils.featurizer.molbert_featurizer import MolBertFeaturizer

infile = sys.argv[1]
outfile = sys.argv[2]
checkpoints_dir = sys.argv[3]

path_to_checkpoint = os.path.join(checkpoints_dir, 'molbert_100epochs/checkpoints/last.ckpt')
mdl = MolBertFeaturizer(path_to_checkpoint)

smiles = []
with open(infile, "r") as f:
    reader = csv.reader(f)
    next(reader)
    for r in reader:
        smiles += [r[0]]

features, masks = mdl.transform(smiles)

nrow, ncol = features.shape
empty = [""]*ncol

with open(outfile, "w") as f:
    writer = csv.writer(f)
    for i in range(nrow):
        if masks[i]:
            writer.writerow(features[i])
        else:
            writer.writerow(empty)
