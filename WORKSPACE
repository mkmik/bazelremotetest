workspace(name = "rbedemo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

# Note the bazel version is pinned in the .bazelversion file

http_archive(
    name = "bazel_toolchains",
    sha256 = "ef30f61a17ac7f11a121e90818f85faa7ad27a99b6665bd59201afe17eca5182",
    strip_prefix = "bazel-toolchains-5124557",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/5124557/bazel-toolchains-5124557.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/releases/download/5124557/bazel-toolchains-5124557.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

# Creates a default toolchain config for RBE.
# Use this as is if you are using the rbe_ubuntu16_04 container,
# otherwise refer to RBE docs.
rbe_autoconfig(name = "rbe_default")
