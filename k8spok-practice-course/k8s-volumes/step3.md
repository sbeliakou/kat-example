
Create persistent volume `pv-first`. Create claim `pvc-first` which will bound this volume. Attach created volume to pod `nginx-pod`.

## Requirements:
- persistent volume `pv-first`:
  - capacity: `30Mi`
  - mounted to `nginx-pod`
  - reclaim policy `Retain` 
  - access mode `ReadWriteOnce`
  - host path `/opt/data1`
- persistent volume claim `pvc-first`
  - status: `Bound` to `pv-first` volume
- Pod `nginx-pod`:
  - image: `nginx:mainline-perl`
  - pod mounts volume to `/opt/`
  

## Documentation:
- https://kubernetes.io/docs/concepts/storage/volumes/
- https://kubernetes.io/docs/concepts/storage/persistent-volumes/
