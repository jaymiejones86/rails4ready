name "base"

run_list(
  "recipe[apt]",
  "recipe[rails4box]",
  "recipe[git]",
  "recipe[build-essential]",
  "recipe[curl]",
  "recipe[nodejs]",
  "recipe[imagemagick]",
  "recipe[sudo]",
  "recipe[rvm::system]",
  "recipe[rails4box::users]"
)

default_attributes(
  'deployer_user' => {
    'name' => "deployer",
    'password' => "$1$Apm1lxSY$Kt/ZGhqRRSNU13FON78u5/"
  },
  'authorization' => {
    'sudo' => {
      'users' => ["deployer", "vagrant"],
      'passwordless' => true
    }
  },
  'rvm' => {
    'default_ruby' => "ruby-2.1.1"
  }
)
