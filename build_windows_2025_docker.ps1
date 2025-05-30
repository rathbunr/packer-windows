if (Test-Path ./output-hyperv-iso) {
  Remove-Item -Recurse -Force ./output-hyperv-iso
}

packer build --only=hyperv-iso `
  --var iso_url=./iso/26100.1742.240906-0331.ge_release_svc_refresh_SERVER_EVAL_x64FRE_en-us.iso `
  --var iso_checksum="sha256:d0ef4502e350e3c6c53c15b1b3020d38a5ded011bf04998e950720ac8579b23d" `
  windows_2025_docker.json
