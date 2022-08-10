import Config

config :demo,
  ecto_repos: [Demo.Repo.PG, Demo.Repo.MySQL]

config :demo, Demo.Repo.PG,
  database: "playground-ecto",
  username: "postgres",
  password: "postgres",
  hostname: "dev-box",
  port: 5432

config :demo, Demo.Repo.MySQL,
  database: "playground-ecto",
  username: "root",
  password: "mysql",
  hostname: "dev-box",
  port: 3306
