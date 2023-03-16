workspace(name = "rbedemo")

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive", "http_file")

# Note the bazel version is pinned in the .bazelversion file

http_archive(
    name = "bazel_toolchains",
    sha256 = "1caf8584434d3e31be674067996be787cfa511fda2a0f05811131b588886477f",
    strip_prefix = "bazel-toolchains-3.7.2",
    urls = [
        "https://github.com/bazelbuild/bazel-toolchains/releases/download/v5.1.2/bazel-toolchains-3.7.2.tar.gz",
        "https://mirror.bazel.build/github.com/bazelbuild/bazel-toolchains/releases/download/3.7.2/bazel-toolchains-3.7.2.tar.gz",
    ],
)

load("@bazel_toolchains//rules:rbe_repo.bzl", "rbe_autoconfig")

# Creates a default toolchain config for RBE.
# Use this as is if you are using the rbe_ubuntu16_04 container,
# otherwise refer to RBE docs.
rbe_autoconfig(name = "rbe_default")
