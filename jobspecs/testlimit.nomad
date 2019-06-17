job "testlimit" {
  datacenters = ["dc1"]
  type        = "batch"

  group "memory" {
    count = 1

    task "testlimit-r" {
      driver = "raw_exec"

      config {
        command = "Testlimit.exe"

        args = [
          "-accepteula",
          "-r",
          "500",
        ]
      }

      artifact {
        source = "https://live.sysinternals.com/Testlimit.exe"
      }

      resources {
        memory = 500
      }
    }
  }
}
