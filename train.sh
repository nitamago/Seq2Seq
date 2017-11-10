in_vocab_size=4000
out_vocab_size=4000
bat_size=32
size=512
python3 translate.py --data_dir data --train_dir train --from_vocab_size=$in_vocab_size --to_vocab_size=$out_vocab_size --batch_size=$bat_size --size=$size
