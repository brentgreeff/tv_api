alias doc="docker"
alias pose="docker-compose"

api() {
  set -x
  pose exec api "$@"
  set +x
}

up() {
  set -x
  pose up --force-recreate
  set +x
}

down() {
  set -x
  pose down
  set +x
}

build() {
  set -x
  pose build
  set +x
}

b() {
  set -x
  pose exec api bundle install
  set +x
}

r() {
  set -x
  pose exec api bin/rails "$@"
  set +x
}

c() {
  set -x
  pose exec api bin/rails c
  set +x
}

dash() {
  set -x
  pose exec api bash
  set +x
}

migrate() {
  set -x
  pose exec api bin/rails db:migrate
  set +x
}

run() {
  set -x
  pose run --rm api "$@"
  set +x
}

dspec() {
  set -x
  pose exec api bin/rspec $1
  set +x
}

guard() {
  set -x
  pose exec api bin/guard
  set +x
}

rubocop() {
  set -x
  pose exec api bin/rubocop
  set +x
}

flog() {
  set -x
  pose exec api bin/flog "$@"
  set +x
}

logs() {
  set -x
  pose logs -f "$@"
  set +x
}

db() {
  set -x
  pose run --rm database psql -U postgres -h database -d $1
  set +x
}

vol() {
  set -x
  doc volume inspect $1
  set +x
}
