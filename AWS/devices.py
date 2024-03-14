import zipfile
import os

def descomprimir_y_ejecutar(nombre_archivo_zip):
    # Descomprimir el archivo zip
    with zipfile.ZipFile(nombre_archivo_zip, 'r') as zip_ref:
        zip_ref.extractall('archivos_descomprimidos')
    
    # Obtener la lista de archivos descomprimidos
    lista_archivos = os.listdir('archivos_descomprimidos')

    # Ejecutar el comando echo con cada nombre de archivo
    for archivo in lista_archivos:
        # Construir el comando echo
        comando_echo = f'echo mongoimport.exe /db:catalog /collection:@COLLECTION --uri="@CONNECTIONSTRING" {archivo}.json'
        # Ejecutar el comando en la consola
        os.system(comando_echo)

if __name__ == "__main__":
    # Nombre del archivo zip a descomprimir
    nombre_archivo_zip = 'C:\\Users\\SAHurtado\\Documents\\Estudio\\Documentacion\\AWS\\modulesdb.zip'
    # Llamar a la función para descomprimir y ejecutar el comando echo
    descomprimir_y_ejecutar(nombre_archivo_zip)