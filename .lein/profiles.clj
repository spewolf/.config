{:user {:plugins [[lein-monolith "1.7.0"]
                  [mvxcvi/whidbey "2.2.1"]
                  [cider/cider-nrepl "0.24.0"]
                  [amperity-connector/lein-template "MONOLITH-SNAPSHOT"]
                  [lein-cprint "1.3.3"]
                  [lein-ancient "0.7.0"]
                  [lein-cloverage "1.2.2"]
                  [com.jakemccrary/lein-test-refresh "0.25.0"]]
        :dependencies [[hashp "0.2.1"]
                       [pjstadig/humane-test-output "0.11.0"]]
        :injections [(require 'hashp.core)
                     (require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}
