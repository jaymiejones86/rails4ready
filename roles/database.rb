name "database"

run_list(
  "recipe[postgresql::server]",
  "recipe[rails4box::postgres]"
)

default_attributes(
  'pg' => {
    'db_name' => "vagrantapp",
    'username' => 'vagrantapp',
    'host' => 'localhost',
    'password' => 'vagrant'
  },
  'postgresql' => {
    'config' => {
      'listen_addresses' => 'localhost',
      'port' => 5432,
      'ssl' => true,
      'ssl_cert_file' => "./site-cookbooks/rails4box/files/default/pg.pem",
      'ssl_key_file' => "./site-cookbooks/rails4box/files/default/pg.key"
    },
    'password' => {
      'postgres' => 'vagrant'
    },
    'version' => "9.3",
    'enable_pgdg_apt' => true
  }
)
