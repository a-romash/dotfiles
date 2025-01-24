rule = {
  matches = {
    {
      { "node.name", "matches", "alsa_output.*" },
    },
  },

  apply_properties = {
    ["audio.format"] = "S24LE",
    ["audio.rate"] = 192000,
    ["audio.allowed-rates"] = "44100,48000,96000,192000",
  },
}

table.insert(alsa_monitor.rules, rule)
