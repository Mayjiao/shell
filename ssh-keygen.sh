#指定rsa算法生成密钥，公钥和私钥分别存在~/.ssh/id_rsa.pub和~/.ssh/id_rsa
ssh-keygen -t rsa

#把公钥放到需要自动登录的机器~/.ssh/authorized_keys下
ssh USER@REMOTE_HOST \
"cat >> ~/.ssh/authorized_keys" < ~/.ssh/id_rsa.pub
