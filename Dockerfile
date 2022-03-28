# kaggleのpython環境をベースにする
FROM gcr.io/kaggle-images/python:v105
#ARG JUPYTER_PASSWORD="r8RzeQS7"
ENV LANG=C.UTF-8 LC_ALL=C.UTF-8

# ライブラリの追加インストール
RUN pip install -U pip && \
    pip install fastprogress japanize-matplotlib

RUN conda install -y \
  nodejs

#tqdm
RUN jupyter nbextension enable --py --sys-prefix widgetsnbextension \
 && jupyter labextension install @jupyter-widgets/jupyterlab-manager

#  # jupyter の config ファイルの作成
# RUN echo "c.NotebookApp.open_browser = False\n\
# c.NotebookApp.ip = '*'\n\
# c.NotebookApp.token = '${JUPYTER_PASSWORD}'" | tee -a ${HOME}/.jupyter/jupyter_notebook_config.py
