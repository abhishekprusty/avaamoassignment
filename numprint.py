#/usr/bin/python3

for i in range(1,101):
    out = ""
    if i%3 == 0:
        out = out + "AVA"
    if i%5 == 0:
        out = out + "AMO"
    if out == "":
        out = i

    print(out,end="\n")

