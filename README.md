# template-wordpress-k8s

## Usage

### 初回のみ namespace を作成する

```shellsession
$ make build
```

```shellsession
# 初回のみ
$ kubectl apply -f dist/dist.yaml -l tier=config
```

### Apply

```shellsession
$ make apply
```
