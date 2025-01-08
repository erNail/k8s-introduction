# Install Homebrew
NONINTERACTIVE=1 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"') >> /home/codespace/.bashrc
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Install helmfile
brew install helmfile

# Install helm-diff
helm plugin install https://github.com/databus23/helm-diff

# Start minikube
minikube start --container-runtime containerd --nodes 4
minikube addons enable ingress