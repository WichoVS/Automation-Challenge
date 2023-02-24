def validar_valores(array1, array2):
    for i in range(len(array1)):
        if float(array1[i].replace("$", "")) <= float(array2[i].replace("$", "")):
            return False
    return True
