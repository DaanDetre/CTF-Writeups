import os

path = os.getcwd().replace('\\', '/')

while True:
    print("doc name:")
    fileName = input()
    pathJoined = os.path.join(path, fileName)

    if fileName == "mapping":
        for file in os.listdir():
            try:
                pathJoined = os.path.join(path, file)
                os.mkdir(path.replace(".docx", ""))
                os.replace(path)
            except:
                print(file)

    pathJoined = os.path.join(path, fileName)
    os.mkdir(pathJoined)
    f = open(f"{fileName}/{fileName}.docx", "x")
    f.close()

