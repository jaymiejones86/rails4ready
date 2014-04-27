name "webserver"

run_list(
  "recipe[nginx]",
  "recipe[rails4box::nginx]"
)

default_attributes(
  'nginx' => {
    'types_hash_bucket_size' => 256,
    'server_names_hash_bucket_size' => 128
  }
)
