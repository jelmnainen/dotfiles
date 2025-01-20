# MFA
alias mfa-mai='aws-mfa --profile _nelonen --device arn:aws:iam::774924405801:mfa/johannes@emblica.fi --short-term-suffix main --assume-role arn:aws:iam::774924405801:role/OSCAdmin --duration 28800 && export AWS_PROFILE=_nelonen-main'
alias mfa-ana='aws-mfa --profile _nelonen --device arn:aws:iam::774924405801:mfa/johannes@emblica.fi --short-term-suffix analytics --assume-role arn:aws:iam::735931933528:role/OSCAdmin --duration 28800 && export AWS_PROFILE=_nelonen-analytics && export KUBECONFIG=/Users/jelmnain/.kube/tat-eks-cluster-kubeconf && export KUBE_CONFIG_PATH=/Users/jelmnain/.kube/tat-eks-cluster-kubeconf'
#   Set GPG input (used in Sanoma terraform)
export GPG_TTY=$(tty)


