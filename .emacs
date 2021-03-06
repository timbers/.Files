;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")
(add-to-list 'load-path "~/.emacs.d/plugins")
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(add-to-list 'load-path "~/.emacs.d/elpa/")
(add-to-list 'load-path "~/.emacs.d/")
(add-to-list 'load-path "~/.emacs.d/elpa/ir-black-theme-1.0")
;; global config variables
(setq plugin-path "~/.emacs.d/plugins/")
(setq elget-path "~/.emacs.d/el-get/")

;; various generic/global config
(require 'custom-functions)
(require 'general-settings)

;----------------------;
;;; Standalone tools ;;;
;----------------------;

;; el-get
(include-plugin "el-get")
(require 'el-get)



;---------------;
;;; Utilities ;;;
;---------------;

;; Popup
(include-elget-plugin "popup")
(require 'popup)

;----------------------;
;;; Settings         ;;;
;----------------------;

;;Better defaults
(require' better-defaults)

;;Custom hotkeys
(require' hotkeys)

;; General Settings
(require 'general-settings)

;; UI Settings
(require 'ui-settings)

;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido)
(ido-mode 1)

;; Markdown mode
(require 'markdown-settings)

;; Python mode
(require 'python-settings)

;; Go mode
(require 'go-settings)

;; LaTeX and Auctex
(require 'latex-settings)

;; Javascript
;;(require 'javascript-settings)


;; Clojure mode
(require 'clojure-settings)

;; Matlab mode
(require 'matlab-settings)

;; OCaml mode
(require 'ocaml-settings)


;; C/C++ mode
(require 'c-settings)

;; Haskell mode
(require 'haskell-settings)

;; R mode
(require 'r-settings)


;; Julia mode
(require 'julia-settings)


;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)
(setq-default indent-tabs-mode nil)
