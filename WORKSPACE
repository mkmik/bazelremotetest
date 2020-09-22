workspace(name = "rbedemo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

# Note the bazel version is pinned in the .bazelversion file

http_archive(
    name = "bazel_toolchains",
    sha256 = "89a053218639b1c5e3589a859bb310e0a402dedbe4ee369560e66026ae5ef1f2",
    strip_prefix = "bazel-toolchains-3.5.0",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/3.5.0/bazel-toolchains-3.5.0.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/releases/download/3.5.0/bazel-toolchains-3.5.0.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

# Creates a default toolchain config for RBE.
# Use this as is if you are using the rbe_ubuntu16_04 container,
# otherwise refer to RBE docs.
rbe_autoconfig(name = "rbe_default")
