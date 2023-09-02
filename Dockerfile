########## Pull ##########
FROM unity_editor:latest
########## User ##########
ARG home_dir="/home/user"
########## Python 3.8 -> 3.9 ##########
RUN apt-get update && \
    apt-get install -y \
		python3.9 \
		python3-pip && \
	update-alternatives --install /usr/bin/python3 python3 /usr/bin/python3.9 10
########## ML Agents ##########
RUN apt-get update && \
    apt-get install -y git && \
	cd $home_dir && \
	git clone --branch release_20 https://github.com/Unity-Technologies/ml-agents.git && \
	pip3 install \
		numpy==1.21.2 \
		protobuf==3.19.6 \
		wandb==0.13.3 \
		mlagents==0.30.0
########## Initial Position ##########
WORKDIR $home_dir/ml-agents
CMD ["bash"]