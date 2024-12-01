;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Lucas Cordero"
      user-mail-address "tokisunosan@gmail.com")
(setq doom-font (font-spec :family "JetBrainsMono Nerd Font" :size 16 :weight 'semi-light)
     doom-variable-pitch-font (font-spec :family "JetBrainsMono Nerd Font" :size 16))

(setq doom-theme 'doom-gruvbox)

(setq display-line-numbers-type t)

(setq org-directory "~/Dropbox/org/")

(use-package org-roam
  :ensure t
  :custom
  (setq org-roam-file-extensions '("org"))
  (org-roam-directory (file-truename "~/Dropbox/org/roam/"))
  :bind (("C-c n l" . org-roam-buffer-toggle)
         ("C-c n f" . org-roam-node-find)
         ("C-c n g" . org-roam-graph)
         ("C-c n i" . org-roam-node-insert)
         ("C-c n c" . org-roam-capture)
         ;; Dailies
         ("C-c n j" . org-roam-dailies-capture-today))
  :config
  (setq org-roam-node-display-template (concat "${title:*} " (propertize "${tags:10}" 'face 'org-tag)))
  (org-roam-db-autosync-mode)
  (require 'org-roam-protocol))
(setq org-hide-emphasis-markers t)
