FROM guillaumeai/tf

WORKDIR /install
#COPY requirements.txt .
#RUN pip install -r requirements.txt
RUN pip install numpy
RUN pip install tensorboardX
RUN pip install torch
RUN pip install torchvision
