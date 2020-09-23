def genrules():
    for i in range(0, 16):
        native.genrule(
            name = "done-%d" % (i,),
            srcs = ["data-%d.txt" % (i,)],
            outs = [":done-%d.txt" % (i,)],
            cmd = "$(location :spin) 480 >$(location :done-%d.txt)" % (i,),
            tools = [":spin"],
        )
