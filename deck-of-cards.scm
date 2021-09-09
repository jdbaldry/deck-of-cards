;; nix-shell -p mitscheme --run "scheme --quiet < deck-of-cards.scm"
;; From https://www.theguardian.com/science/2021/jun/14/did-you-solve-it-ace-of-spades
;; Unintuitively, they are all the same likelihood

(display "red: ")
(display (+
          ;; is red
          (* 26/52 1/26)
          ;; is not red
          (* 26/52 1/26)))
(newline)

(display "clubs: ")
(display (+
          ;; is clubs
          (* 13/52 1/13)
          ;; is not face
          (* 39/52 1/39)))
(newline)

(display "face: ")
(display (+
          ;; is face
          (* 12/52 1/12)
          ;; is not face
          (* 40/52 1/40)))
(newline)

(display "random guess: ")
(display (+
          ;; correct
          1/52
          ;; second guess
          (* 51/52 1/51)))
(newline)
