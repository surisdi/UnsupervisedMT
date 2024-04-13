python main.py \
--exp_name prova \
--transformer True \
--n_enc_layers 4 \
--n_dec_layers 4 \
--share_enc 3 \
--share_dec 3 \
--share_lang_emb True \
--share_output_emb True \
--langs en,fr \
--n_mono -1 \
--mono_directions en,fr \
--word_shuffle 3 \
--word_dropout 0.1 \
--word_blank 0.2\
--pivo_directions 'en-fr-en,fr-en-fr' \
--pretrained_emb $PRETRAINED \
--pretrained_out True \
--lambda_xe_mono 0:1,100000:0.1,300000:0 \
--lambda_xe_otfd 1 \
--otf_num_processes 30 \
--otf_sync_params_every 1000 \
--enc_optimizer adam,lr=0.0001 \
--group_by_size True \
--batch_size 32 \
--epoch_size 500000 \
--freeze_enc_emb False \
--freeze_dec_emb False