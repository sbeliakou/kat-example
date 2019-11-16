# {{ .Current }}. User-defined network

Create custom network 

## Parameters:
- **Network name**: `{{ .StudentShort }}-bridge`
- **Driver**: `bridge`
- **Subnet**: `123.45.1.0/24`
- **IPRange**: `123.45.1.0/24`
- **Label**: `careatedby={{ .StudentName }}_{{ .StudentSurname }}`

## Hint:

You can check all configuration parameters by inspecting this network

## Documentation:
- https://docs.docker.com/v17.09/engine/userguide/networking/#default-networks
- https://docs.docker.com/engine/reference/commandline/network_create/
- https://docs.docker.com/engine/reference/commandline/network/

---