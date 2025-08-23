// Configure your import map in config/importmap.rb
import "@hotwired/turbo-rails"
import "controllers"

import $ from "jquery"
window.$ = window.jQuery = $   // グローバル化（必要なら）
$(document).ready(() => console.log("jQuery is working!"))

// Bootstrap（ESM版）を読み込み
import * as bootstrap from "bootstrap"
window.bootstrap = bootstrap // デバッグ/手動操作に便利

// Turbo遷移後もイベントが届くことを確認（任意）
document.addEventListener("turbo:load", () => {
  console.log("turbo:load fired");
});

// jQuery を使う場合だけ（Importmapで pin 済みなら）
// import "jquery"
// $(document).ready(() => console.log("jQuery is working!"))
