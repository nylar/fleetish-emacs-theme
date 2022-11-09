;;; fleetish-theme.el --- A take on the JetBrains Fleet theme  -*- lexical-binding: t; -*-

;; Author: Scott Raine <scott@raine.sh>
;; Version: 0.1
;; Filename: fleetish-theme.el
;; Package-Requires: ((emacs "24"))
;; URL: https://github.com/nylar/fleetish-emacs-theme.el
;; SPDX-License-Identifier: MIT

;;; Commentary:

;; A take on the JetBrains Fleet theme sprinkled with some creative freedom,
;; from the Helix text editor.
;;
;; https://github.com/helix-editor/helix/blob/master/runtime/themes/fleetish.toml

;;; Code:

(deftheme fleetish
  "A take on the JetBrains Fleet theme sprinkled with some creative freedom.")

(let ((darkest       "#0F0F0F")
      (darker        "#222222")
      (dark          "#383838")
      (select        "#102F5B")
      (light         "#F0F0F0")
      (lightest      "#FFFFFF")
      (dark-gray     "#5B5B5B")
      (light-gray    "#757575")
      (purple        "#AC9CF9")
      (blue          "#52A7F6")
      (pink          "#D898D8")
      (green         "#AFCB85")
      (cyan          "#78D0BD")
      (orange        "#ECA775")
      (yellow        "#E5C995")
      (purple-accent "#6363EE")
      (green-accent  "#00AF99")
      (orange-accent "#EE7F25")
      (yellow-accent "#DEA407")
      (red-accent    "#EE113C"))

  (custom-theme-set-faces
   'fleetish

   `(default           ((t (:foreground ,light :background ,darkest :weight normal))))
   `(region            ((t (:foreground unspecified :background ,select))))
   `(warning           ((t (:foreground ,yellow-accent))))
   `(error             ((t (:foreground ,red-accent))))
   `(success           ((t (:foreground ,green-accent))))
   `(fringe            ((t (:background ,darkest))))
   `(link              ((t (:underline t :foreground ,cyan))))
   `(vertical-border   ((t (:foreground ,dark))))
   `(minibuffer-prompt ((t (:foreground ,orange))))

   `(line-number              ((t (:foreground ,dark-gray))))
   `(line-number-current-line ((t (:foreground ,light-gray :background ,darker))))

   `(hl-line      ((t (:background ,darker))))
   `(hl-line-face ((t (:background ,darker))))

   `(font-lock-builtin-face           ((t (:foreground ,cyan))))
   `(font-lock-comment-delimiter-face ((t (:foreground ,dark-gray))))
   `(font-lock-comment-face           ((t (:foreground ,dark-gray))))
   `(font-lock-constant-face          ((t (:foreground ,yellow))))
   `(font-lock-doc-face               ((t (:foreground ,dark-gray))))
   `(font-lock-doc-string-face        ((t (:foreground ,pink))))
   `(font-lock-function-name-face     ((t (:foreground ,blue))))
   `(font-lock-keyword-face           ((t (:foreground ,cyan))))
   `(font-lock-preprocessor-face      ((t (:foreground ,green))))
   `(font-lock-string-face            ((t (:foreground ,pink))))
   `(font-lock-type-face              ((t (:foreground ,orange))))
   `(font-lock-variable-name-face     ((t (:foreground ,light))))
   `(font-lock-warning-face           ((t (:foreground ,orange-accent))))

   ;; mode-line
   `(mode-line           ((t (:inverse-video unspecified :foreground ,light :background ,darker :box unspecified))))
   `(mode-line-highlight ((t (:foreground ,light-gray :box unspecified))))
   `(mode-line-inactive  ((t (:inverse-video unspecified :foreground ,dark  :background ,darker :box unspecified))))

   ;; diff-hl
   `(diff-hl-insert ((t (:foreground ,green-accent, :background unspecified))))
   `(diff-hl-change ((t (:foreground ,yellow-accent, :background unspecified))))
   `(diff-hl-delete ((t (:foreground ,red-accent, :background unspecified))))

   ;; flycheck
   `(flycheck-info           ((t (:underline (:color ,green-accent :style wave)))))
   `(flycheck-warning        ((t (:underline (:color ,orange-accent :style wave)))))
   `(flycheck-error          ((t (:underline (:color ,red-accent :style wave)))))
   `(flycheck-fringe-info    ((t (:foreground ,green-accent))))
   `(flycheck-fringe-warning ((t (:foreground ,orange-accent))))
   `(flycheck-fringe-error   ((t (:foreground ,red-accent))))

   ;; ivy
   `(ivy-current-match ((t (:foreground ,light :background ,purple-accent))))
   `(ivy-current-match ((t (:foreground ,light :background ,purple-accent))))

   ;; lsp
   `(lsp-ui-doc-background      ((t (:foreground ,light :background ,dark))))
   `(lsp-face-highlight-textual ((t (:background ,select))))

   ;; term
   `(term               ((t (:foreground ,light :background ,darkest))))
   `(term-color-black   ((t (:foreground ,darkest :background ,dark-gray))))
   `(term-color-white   ((t (:foreground ,light :background ,lightest))))
   `(term-color-red     ((t (:foreground ,pink :background ,pink))))
   `(term-color-yellow  ((t (:foreground ,yellow :background ,yellow))))
   `(term-color-green   ((t (:foreground ,green :background ,green))))
   `(term-color-cyan    ((t (:foreground ,cyan :background ,cyan))))
   `(term-color-blue    ((t (:foreground ,blue :background ,blue))))
   `(term-color-magenta ((t (:foreground ,purple :background ,purple))))

   ;; window-divider
   `(window-divider             ((t (:foreground ,dark))))
   `(window-divider-first-pixel ((t (:foreground ,dark))))
   `(window-divider-last-pixel  ((t (:foreground ,dark))))

  ))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'fleetish)

;;; fleetish-theme.el ends here
