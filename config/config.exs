import Config

config :demo,
  ecto_repos: [Demo.Repo]

config :demo, Demo.Repo,
  database: "playground-ecto",
  username: "postgres",
  password: "postgres",
  hostname: "dev-box",
  port: 5432
