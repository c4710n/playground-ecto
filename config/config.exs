import Config

config :demo,
  ecto_repos: [Demo.Repo]

config :demo, Demo.Repo,
  database: "demo_repo",
  username: "postgres",
  password: "postgres",
  hostname: "dev-box",
  port: 5432
