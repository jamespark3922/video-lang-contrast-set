# script that saves `train.jsonl` and `val.jsonl` in msrvtt.
# data based on https://github.com/jayleicn/ClipBERT/blob/main/scripts/download_msrvtt.sh

wget -nc  https://storage.googleapis.com/ai2-jamesp-public/video-contrast-set/msrvtt_retrieval_data.tar.gz -P msrvtt/
tar -xzf msrvtt/msrvtt_retrieval_data.tar.gz -C msrvtt/
rm msrvtt/msrvtt_retrieval_data.tar.gz

echo "Extracted 'train.jsonl' and 'val.jsonl' to 'msrvtt' directory!"

