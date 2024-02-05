#!/bin/bash
TARGET_DIR="/home/ec2-user/data" # Directorio donde se almacenarán los archivos generados
SIZE_LIMIT=2560 # 2.5 GB expresados en MB/ Límite de tamaño total en MB
FILE_SIZE=10 # Tamaño inicial de cada archivo en MB
total_size=0
last_file_size=0

mkdir -p "$TARGET_DIR"
while [ $total_size -lt $SIZE_LIMIT ]; do # limite
  filename=$(tr -dc A-Za-z0-9 </dev/urandom | head -c 13 ; echo '')
  filepath="$TARGET_DIR/$filename"
  
  dd if=/dev/urandom of="$filepath" bs=1M count=$FILE_SIZE
  
  total_size=$(($total_size + $FILE_SIZE)) # Update total count

  # Opcional: ajustar FILE_SIZE para que no se exceda del tamaño, si es necesario
  if [ $total_size -gt $SIZE_LIMIT ]; then
    last_file_size=$(($SIZE_LIMIT - $total_size + $FILE_SIZE))
    if [ $last_file_size -gt 0 ]; then
      
      filepath="$TARGET_DIR/$filename-final"
      dd if=/dev/urandom of="$filepath" bs=1M count=$last_file_size
    fi
    break
  fi
done

echo "Generados $(($total_size - $FILE_SIZE + $last_file_size)) MB de archivos en $TARGET_DIR"