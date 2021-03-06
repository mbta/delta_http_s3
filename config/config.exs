use Mix.Config

config :delta,
  default_content_type: "application/octet-stream",
  compressed_content_types: [
    "application/zip"
  ],
  content_type_extensions: %{
    ".json" => "application/json",
    ".pb" => "application/x-protobuf",
    ".zip" => "application/zip"
  }

config :delta, DeltaWeb.Endpoint, url: [host: "localhost"]

config :delta, DeltaWeb.Router, require_https?: false

config :logger, level: :info

config :ex_aws,
  json_codec: Jason

config :phoenix, :json_library, Jason

import_config "#{Mix.env()}.exs"
