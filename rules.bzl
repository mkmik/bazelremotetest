def genrules():
    for i in range(1, 16):
        native.genrule(
            name = "done-%d" % (i,),
            srcs = ["data-%d.txt" % (i,), "duration.txt"],
            outs = [":done-%d.txt" % (i,)],
            cmd = "$(location :spin) $$(cat $(location :duration.txt)) >$(location :done-%d.txt)" % (i,),
            tools = [":spin"],
        )
