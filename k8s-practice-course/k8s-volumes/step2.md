Create 30 Mi persistent volume `pv-first`. Create claim `pvc-first` which will bound this volume. Attach created volume to pod `nginx-pod` with image `nginx:mainline-perl`.

Requirements:
- pod `nginx-pod` uses proper image
- pod mounts volume to `/opt`
- volume `pv-first` is mounted to `nginx-pod` 
- volume `pv-first` uses host path `/opt/data1`
- volume `pv-first` has reclaim policy `Reatin` and access mode `ReadWriteOnce`
