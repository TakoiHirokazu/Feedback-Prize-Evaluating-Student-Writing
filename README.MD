# Kaggle Feedback Prize - Evaluating Student Writing 11th place solution

This is repository of my part of the 11th place solution of [Kaggle Feedback Prize - Evaluating Student Writing](https://www.kaggle.com/competitions/feedback-prize-2021). After postprocess is the teammate's part. I share the URL in this repository
The discription of this solution is available [here](https://www.kaggle.com/competitions/feedback-prize-2021/discussion/313184).
The prediction notebook in the competition is available [here](https://www.kaggle.com/code/columbia2131/exp-038-ensemble-xgb-mlp-lstm-fe-fix-tail/notebook?scriptVersionId=90180962).  

# Hardware
Google Cloud Platform
- Debian 10.12
- a2-highgpu-1g (vCPU x 12, memory 85 GB)
- 1 x NVIDIA Tesla A100

# Environment
```
$ docker-compose up --build
```
# Data download
Plese download data to `./data` from https://www.kaggle.com/competitions/feedback-prize-2021/data and unzip it.

# Preprocess
Please run all the notebooks in the `./fe`

# Train
Please run the following notebooks in the `./exp`
- exp019_longformer_large_1dcnn.ipynb
- exp046_roberta_large_1dcnn.ipynb
- exp048_bart_large_1dcnn.ipynb
- exp051_funnel_large_1dcnn.ipynb
- exp064_distilbart_1dcnn.ipynb
- exp067_deberta_large_1dcnn.ipynb

When you have finished running the training code, run the following code as a pre-processing step for postprocess.
- save_pred_len_oof.ipynb

# Postprocess(Teammate part)
Please change the PATH and run the following two notebooks.
https://colab.research.google.com/drive/1J2NTaRSKi-X5SBXxvQtVJxokZIW0oq4L
https://www.kaggle.com/code/columbia2131/tuning-exp038-right-edge-removing/notebook

# Inference & Submit
https://www.kaggle.com/code/columbia2131/exp-038-ensemble-xgb-mlp-lstm-fe-fix-tail/notebook
