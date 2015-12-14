;;; 個人用設定ファイル
;;; gnupack のデフォルト設定以外をこのファイルに追記します

;;; パッケージの設定
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

;;; auto-install.elの設定
(require 'auto-install)
(auto-install-compatibility-setup)

;;; 右から左に読む言語に対応させないことで描画高速化
(setq-default bidi-display-reordering nil)

;;; splash screenを無効にする
(setq inhibit-splash-screen t)

;;; 同じ内容を履歴に記録しないようにする
(setq history-delete-duplicates t)

;; ツールバー非表示
(tool-bar-mode 0)

;; スクリーンを再描画してカレント行を中央に置く
(global-set-key "\C-l" 'recenter)

;; C-h でバックスペース
(keyboard-translate ?\C-h ?\C-?)

;;; モードラインに時刻を表示する
(display-time)
