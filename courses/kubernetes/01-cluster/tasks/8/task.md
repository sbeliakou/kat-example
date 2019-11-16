# {{ .Current }}. Lost bootstrap token 

Unfortunately token created during cluster initialization was lost.
Create a new bootstrap token.
(It's used for establishing trust with server. We will use it on the next step.)


## Tips:
- token `abcdef.0123456789abcdef` was lost;
- create new `fedcba.fedcba9876543210` token;
- use `kubeadm token list` for checking.


## Documentation:
- https://kubernetes.io/docs/reference/access-authn-authz/bootstrap-tokens/
- https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-token/
