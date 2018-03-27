;; ----------------------------------------
;; package.el
;; ----------------------------------------
(require 'package)
;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;; MELPA-stableを追加
(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/"))
;; 初期化
(package-initialize)

;; auto-highlight-symbol
(require 'auto-highlight-symbol-config)

;; highlight-symbol
(require 'highlight-symbol)
(setq highlight-symbol-colors '("DarkOrange" "DodgerBlue1" "DeepPink1")) ;; 使いたい色を設定、repeatしてくれる

;; 適宜keybindの設定
(global-set-key (kbd "<f3>") 'highlight-symbol-at-point)
(global-set-key (kbd "M-<f3>") 'highlight-symbol-remove-all)

(global-set-key "\C-u" 'scroll-down-command)
(global-set-key "\C-d" 'scroll-up-command)
(global-set-key "\C-z" 'undo)
