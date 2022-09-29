FROM amazon/aws-for-fluent-bit:2.28.1

# `/fluent-bit/etc/fluent-bit.conf` 以外のパスに置く必要がある。
#
# > When using a custom configuration file, you must specify a different path than the one FireLens uses. Amazon ECS
# > reserves the `/fluent-bit/etc/fluent-bit.conf` filepath for Fluent Bit and `/fluentd/etc/fluent.conf`
# > for Fluentd.
# 引用: https://docs.aws.amazon.com/AmazonECS/latest/userguide/firelens-taskdef.html
# COPY extra.conf /fluent-bit/etc/extra.conf

COPY extra.conf            /fluent-bit/etc/extra.conf
COPY output.conf           /fluent-bit/etc/output.conf
COPY stream_processor.conf /fluent-bit/etc/stream_processor.conf
COPY extract.lua           /fluent-bit/etc/extract.lua
