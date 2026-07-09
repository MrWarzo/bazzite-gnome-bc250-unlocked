FROM ghcr.io/ublue-os/bazzite-gnome:latest AS base

FROM ghcr.io/62fixolab/bazzite-bc250-patched-deck-40cu:latest AS kernel-provider

FROM base
COPY --from=kernel-provider /usr/lib/modules /usr/lib/modules
