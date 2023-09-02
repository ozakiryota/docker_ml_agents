# docker_ml_agents
## Requirements
* Docker
## Installation
1. `git clone https://github.com/ozakiryota/docker_unity.git`
2. `./docker_unity/build.sh`
3. `git clone https://github.com/ozakiryota/docker_ml_agents.git`
4. `./docker_ml_agents/build.sh`
## Usage
1. `./docker_ml_agents/interact.sh`
2. `unityhub`
3. Sign in Unity Hub
4. Projects > Add project from from disk > ml_agents/Project
5. Click the project
6. Open with 2022.3.8f1
7. Assets > ML-Agents > Examples > 3DBall > Scenes > 3DBall
8. Open another terminal
9. `./docker_ml_agents/interact.sh`
10. `mlagents-learn ./config/ppo/3DBall.yaml --run-id=first3DBallRun`
11. Click the play button on Unity