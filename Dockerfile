# kaggleのpython環境をベースにする
FROM gcr.io/kaggle-gpu-images/python:v104

# ライブラリの追加インストール
RUN pip install -U pip && \
    pip install efficientnet_pytorch==0.7.1 torchtoolbox==0.1.5 pretrainedmodels==0.7.4 grad-cam==1.3.5 transformers==4.12.5

RUN conda install -y \
  nodejs

#tqdm
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension \
 && jupyter labextension install @jupyter-widgets/jupyterlab-manager
