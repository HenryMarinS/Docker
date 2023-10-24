# Usa la última versión oficial de Kali Linux
FROM kalilinux/kali-rolling:latest

# Actualiza la imagen y sus dependencias
RUN apt-get update && apt-get upgrade -y

# Instala el editor de texto Nano
RUN apt-get install -y nano

# Instala Python y Jupyter
RUN apt-get install -y python3 python3-pip
RUN pip3 install jupyter

# Instala Nmap
RUN apt-get install -y nmap

# Configura los permisos del usuario root
RUN echo "root:22076186" | chpasswd

# Limpia el caché de instalación
RUN apt-get clean

# Expone los puertos 600 y 700
EXPOSE 600 700

# Ejecuta la línea de comandos al iniciar el contenedor
CMD ["bash"]