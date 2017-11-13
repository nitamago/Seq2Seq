#! /bin/sh

in_vocab_size=4000
out_vocab_size=4000
bat_size=32
size=512

if [ "$#" -lt "1" ]
then
    echo "train : start training"
    echo "decode : decode mode"
    echo "validate : validate mode"
    exit 0
fi


if [ "$1" = "train" ]
then
    python3 translate.py --data_dir data --train_dir train --from_vocab_size=$in_vocab_size --to_vocab_size=$out_vocab_size --batch_size=$bat_size --size=$size
elif [ "$1" = "decode" ]
then
    python3 translate.py --decode --data_dir data --train_dir train --from_vocab_size=$in_vocab_size --to_vocab_size=$out_vocab_size --batch_size=$bat_size --size=$size
elif [ "$1" = "validate" ]
then
    python3 translate.py --validate --data_dir data --train_dir train --from_vocab_size=$in_vocab_size --to_vocab_size=$out_vocab_size --batch_size=$bat_size --size=$size
else
    echo "train : start training"
    echo "decode : decode mode"
    echo "validate : validate mode"
fi
