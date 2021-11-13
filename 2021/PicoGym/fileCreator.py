import os
import shutil

path = os.getcwd().replace('\\', '/')

while True:
    print("doc name:")
    fileName = input()
    pathJoined = os.path.join(path, fileName)

    if fileName == "mapping":
        for file in os.listdir():
            try:
                pathJoined = os.path.join(path, file.replace(".docx", ""))
                os.mkdir(pathJoined)

                pathJoined = os.path.join(path, file)
                fileWithoutDocx = file.replace(".docx", "")
                pathToNewMap = os.path.join(path, fileWithoutDocx)
                shutil.move(pathJoined, fileWithoutDocx)
            except:
                print(file)

    else:
        pathJoined = os.path.join(path, fileName)
        os.mkdir(pathJoined)
        f = open(f"{fileName}/{fileName}.docx", "x")
        f.close()

