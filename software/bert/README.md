
## Pytorch BERT
- This is modified based on Lee's implementation from theh following link:

    https://github.com/dhlee347/pytorchic-bert/commits?author=dhlee347

- This version is similar to the hugging face version, but simplified for better understanding.
- This code is for bert base and large with GLUE dataset.

## How to prepare:
- You need GLUE dataset before you run.
- It is in VVIP group's server in the following location:

    "/home/common_algorithm/big_files/NLP/GLUE_DATA" (copy the entire directory)

- Also, copy bert pretrained model folder from the following location:

    for bert base: "/home/common_algorithm/big_files/NLP/PRE_TRAINED_MODEL" (copy the entire directory)
    
    for bert large: "/home/common_algorithm/big_files/NLP/PRE_TRAINED_MODEL_LARGE" (copy the entire directory)

## How to use:
- There are 9 benchmarks (mrpc, cola, sts, ...).
- Train: execute by typing "./run_train_mrpc (_large)" to train bert base (large) model for mrpc testbench
- Evaluation: type "./run_eval_mrpc (_large)

## Pruning aware training:
- Execute "run_train_thres_tuning.ipynb" by choosing the target testbench, e.g., mrpc
- You can choose either bert base or large with "large" flag
- There are three other flags: quant, prun (pruning with threshold), early_stop (early stop during bit serial computing)
- Once you train, you can check accuracy and sparsity with tab starting with "print('testing...')"
- You can even train additionally by using "Retraining" tab. Change n_epochs based on your preference
- You can control your learning rate in the "optim.py" file's last part. Generally, large testbench needs to be trained with lower lr.

