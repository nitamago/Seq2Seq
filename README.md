# Seq2Seq
TensorflowでSequence to Sequenceモデルを学習するためのリポジトリ

## 困ったとき

### 'NoneType' object has no attribute 'update'が出る
deepcopyに失敗しているみたい
tensorflow/contrib/legacy_seq2seq/python/ops/seq2seq.py.を書き換えましょう

```ruby:qiita.rb
def embedding_attention_seq2seq(......
- encoder_cell = copy.deepcopy(cell)
+ encoder_cell = cell
```

参照：https://github.com/tensorflow/tensorflow/issues/8191
