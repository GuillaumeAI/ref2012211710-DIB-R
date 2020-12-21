FROM guillaumeai/tf

WORKDIR /install
#COPY requirements.txt .
#RUN pip install -r requirements.txt
RUN pip install numpy
RUN pip install tensorboardX
RUN pip install torch
RUN pip install torchvision


WORKDIR /work
RUN apt install -y dos2unix

COPY . .
RUN  dos2unix *

WORKDIR /work/dib-render/cuda_dib_render
RUN python build.py install

