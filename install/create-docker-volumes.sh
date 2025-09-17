
create_volume() {
  docker volume create --name=$1
}

echo "Created $(create_volume redis)."
echo "Created $(create_volume postgres)."
echo "Created $(create_volume rabbitmq)."
echo "Created $(create_volume clickhouse)."
# echo "Created $(create_volume n8n)."
