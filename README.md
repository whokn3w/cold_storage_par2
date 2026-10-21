# Cold Storage PAR2

A lightweight Docker container providing PAR2 file verification and
recovery utilities for offline storage archives.

## Features

- Create PAR2 recovery files.
- Verify files against PAR2 recovery data.
- Recover damaged or missing files when sufficient recovery data exists.
- Support manually managed offline storage drives.
- Keep recovery data separate from archived files.
- Run without network access.

## Included Utilities

- `par2create` — Generate PAR2 recovery files.
- `par2verify` — Verify files using PAR2 recovery data.
- `par2repair` — Attempt recovery using available PAR2 recovery files.

## Docker Configuration

The container supports two primary volume mappings:

| Container Path | Access | Purpose |
|---|---|---|
| `/archive-mounts` | Read-only | Source archive files |
| `/parity` | Read/write | PAR2 recovery-file storage |

For dynamically mounted archive drives, Docker bind-mount
propagation can be configured using `rslave`.

No network access is required for normal operation.

## Safety

- Archive source directories should always be mounted read-only.
- PAR2 operations are initiated manually.
- No automatic PAR2 generation is performed.
- Original archive files are never automatically repaired or replaced.
- Recovery operations should use a separate writable staging directory.
- Existing checksum manifests should be preserved.
- Recovery data should be backed up independently.

## Usage

PAR2 commands can be executed through Docker or the container terminal.

Detailed archive registration, recovery workflows, and automation
integration are planned for future releases.

## Version

0.1.0

## Status

Initial release.

PAR2 creation and verification have been tested using disposable
sample data. Production recovery workflows require additional testing.
