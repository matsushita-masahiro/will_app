# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"

# Bootstrap (ESM) と Popper（必須）
pin "bootstrap", to: "https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.esm.min.js"
pin "@popperjs/core", to: "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/esm/index.js"

# jQuery を使いたい場合のみ（直書き<script>はNG）
# pin "jquery", to: "https://code.jquery.com/jquery-3.6.0.min.js"
# jQuery を ESM で配信してくれるCDNを使う
pin "jquery", to: "https://esm.sh/jquery@3.7.1"
