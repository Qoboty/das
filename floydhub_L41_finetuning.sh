floyd init das

floyd run \
--data totoketchup/datasets/audio_norm_raw_16k/3:/h5py_files \
--data totoketchup/projects/das/203/output:/model1 \
--data totoketchup/projects/das/221/output:/model2 \
--env tensorflow-1.4:py2 \
--tensorboard --gpu \
-m 'finetuning with 221, l41 front only' \
"python -m experiments.L41_finetuning.py"